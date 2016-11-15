#!/bin/sh
# Simple sh to automatic generate a file with source and device specif git commit changes to use in a github wiki pages or file.md
# like this:
# https://github.com/bhb27/android_vendor_crdroid/blob/change_temp/Changelog.md
# file.md can work with more data or have more lines then a page wiki

# input variables set the below the rest must be automatic
source_tree="android/crn/"; #path here must be inside home directory
changelog_path_name=vendor/cm/Changelog.md #changelog file path/name.extension
source_name="CRDroid Android Nougat" #Name to display in changelog.md top before version
# input variables end

export Changelog=$HOME/$source_tree/$changelog_path_name
export Temp_Changelog=$HOME/$source_tree/$changelog_path_name.temp

if [ -f $Changelog ];
then
	Changelog=$Temp_Changelog
	if [ -f $Changelog ];
	then
		rm -f $Changelog
	fi
	touch $Changelog
else
	touch $Changelog
fi


# ask for days and version
echo "Generating $source_name changelog...\n"
echo "How many days to log?"
read -r days_to_log
echo "$source_name Version number?"
read -r version
echo "Amount of days to log: $days_to_log"
echo >> $Changelog;
echo "$source_name version $version Changelog:"    >> $Changelog;
echo '============================================================' >> $Changelog;
echo >> $Changelog;

cd $HOME/$source_tree

for i in $(seq $days_to_log);
do
export After_Date=`date --date="$i days ago" +%m-%d-%Y`
k=$(expr $i - 1)
	export Until_Date=`date --date="$k days ago" +%m-%d-%Y`

	echo "Generating Day number:$i $Until_Date..."
	source=$(repo forall -pc 'git log --oneline --after=$After_Date --until=$Until_Date');

	if [ -n "${source##+([:space:])}" ]; then

		echo "$Until_Date" >> $Changelog;
		echo '====================' >> $Changelog;
		repo forall -pc 'git log --oneline --after=$After_Date --until=$Until_Date' | sed 's/^$/#EL /' | sed 's/^/* /' | sed 's/* #EL //' >> $Changelog
		echo >> $Changelog;
	fi

done

sed -i 's/* project /####/g' $Changelog

Changelog=$HOME/$source_tree/$changelog_path_name
if [ -f $Changelog ] && [ -f $Temp_Changelog ];
then
	echo "$(cat $Temp_Changelog)\n$(cat $Changelog)" > $Changelog
	rm -f $Temp_Changelog
fi

echo "\nChangelog generated\n"
