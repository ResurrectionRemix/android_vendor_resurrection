#!/bin/sh
# Copyright OmniROM Project
# Licensed under GPLv3

# Configuration
CONFIG_ROOT=~/gitolite-admin/
CONFIG_FILE=$CONFIG_ROOT/conf/gitolite.conf
ANDROID_ROOT=~/android
PREFIX=android_
BRANCH=android-4.3
SOURCE=android-4.3_r2.2
MANIFEST=android/default.xml
XDA_REMOTE=ssh://git@localhost # NO TRAILING SLASH
GERRIT_REMOTE=ssh://build1.dev.xda-developers.com:29418
REMOTE_MANIFEST=private

# Script
if [ $# -lt 1 ]; then
        echo Usage: ./clone.sh path
        echo Example: ./clone.sh frameworks/base
        exit 1
fi

REPO_NAME=$PREFIX$(echo ${1%/} | sed -e "s/\//_/g")

# Check that folder is a git repo
pushd $1
if [ ! -d .git ]; then
        echo "$1 doesn't appear to be a git repository"
        popd
        exit 1
fi
popd

CURRENT_DIR=$(pwd)
cd $CONFIG_ROOT
git pull
cd $CURRENT_DIR

# Create the repo inside gitolite
echo "Creating $REPO_NAME..."

echo "" >> $CONFIG_FILE
echo "repo $REPO_NAME" >> $CONFIG_FILE
echo "    RW+     =  pulser" >> $CONFIG_FILE
echo "    RW+     =  xplodwild" >> $CONFIG_FILE
echo "    R       =  @all" >> $CONFIG_FILE
echo "" >> $CONFIG_FILE

echo "Comitting and pushing..."
CURRENT_DIR=$(pwd)
cd $CONFIG_ROOT
git commit conf/gitolite.conf -m "Add $REPO_NAME"
git push

# Only works if you are a gerrit admin, will create the named project before pushing (gerrit then replicates to git)

ssh -p 29418 gerrit.omnirom.org gerrit create-project --name $REPO_NAME

echo "Creating branch $BRANCH..."
cd $CURRENT_DIR/$1
git remote add gerrit $GERRIT_REMOTE/$REPO_NAME
git checkout $SOURCE
git branch $BRANCH
git push gerrit $BRANCH

echo "Updating manifest..."
cd $ANDROID_ROOT
SRC_LINE=$(cat $MANIFEST | grep ${1%/} | head -n1)
if [[ "$SRC_LINE" == *group="pdk"* ]]; then
        NEW_LINE="  <project path=\"${1%/}\" name=\"$REPO_NAME\" remote=\"$REMOTE_MANIFEST\" revision=\"$BRANCH\" group=\"pdk\" />"
else
        NEW_LINE="  <project path=\"${1%/}\" name=\"$REPO_NAME\" remote=\"$REMOTE_MANIFEST\" revision=\"$BRANCH\" />"
fi

# Update the repo in manifest listing

sed -i "s%$SRC_LINE%$NEW_LINE%g" $MANIFEST

echo "Pushing manifest"
cd $ANDROID_ROOT/android
git checkout $BRANCH
git commit -a -m "Replace $1 path to new repository $REPO_NAME"
git push $GERRIT_REMOTE/android HEAD:refs/for/$BRANCH

echo "Now remember to approve the change on gerrit before going further!"
read -p "Press [Enter] key once you've approved the change on gerrit"

echo "Remember to repo sync before use!"
