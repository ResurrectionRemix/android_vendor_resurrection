#!/bin/sh
# Simple sh to automatic generate a file with source and device specif git commit changes to use in a github wiki pages or file.md
# like this:
# https://github.com/bhb27/android_vendor_crdroid/blob/change_temp/Changelog.md
# file.md can work with more data or have more lines then a page wiki
. $ANDROID_BUILD_TOP/vendor/cm/tools/colors
# input variables set the below the rest must be automatic
source_tree="RR/"; #path here must be inside home directory
changelog_path_name=vendor/cm/CHANGELOG.mkdn #changelog file path/name.extension
source_name="Resurrection Remix Nougat" #Name to display in changelog.md top before version
# input variables end

export Changelog=$HOME/$source_tree/$changelog_path_name
export Temp_Changelog=$HOME/$source_tree/$changelog_path_name.temp

if [ -f $Changelog ];
 then
 	rm -f $Changelog
fi
 
touch $Changelog


# ask for days and version
echo ""
echo ${cya}"〉 Generating $source_name (for last 30 days) Changelog..\n"${txtrst}
echo >> $Changelog;
echo "# $source_name Version 5.8.0 Changelog"    >> $Changelog;
echo '====================================================' >> $Changelog;
echo >> $Changelog;

cd $HOME/$source_tree

for i in $(seq 30);
do
export After_Date=`date --date="$i days ago" +%m-%d-%Y`
k=$(expr $i - 1)
	export Until_Date=`date --date="$k days ago" +%m-%d-%Y`
	echo ${ylw}"〉 Generating day number:$i $Until_Date.."${txtrst}
	source=$(repo forall -pc 'git log --oneline --after=$After_Date --until=$Until_Date');

	if [ -n "${source##+([:space:])}" ]; then

		echo "$Until_Date" >> $Changelog;
		echo '============' >> $Changelog;
		repo forall -pc 'git log --oneline --after=$After_Date --until=$Until_Date' | sed 's/^$/#EL /' | sed 's/^/* /' | sed 's/* #EL //' >> $Changelog
		echo >> $Changelog;
	fi

done

sed -i 's/* project /#### /g' $Changelog

Changelog=$HOME/$source_tree/$changelog_path_name
if [ -f $Changelog ] && [ -f $Temp_Changelog ];
then
	echo "$(cat $Temp_Changelog)\n$(cat $Changelog)" > $Changelog
	rm -f $Temp_Changelog
fi

echo ${grn}"\n√ Changelog generated\n"${txtrst}
