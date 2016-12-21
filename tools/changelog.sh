#!/bin/bash
# Simple sh to automatic generate a file with source and device specif git commit changes to use in a github wiki pages or file.md
# like this:
# https://github.com/bhb27/android_vendor_crdroid/blob/change_temp/Changelog.md
# file.md can work with more data or have more lines then a page wiki
# input variables set the below the rest must be automatic
source_tree="$ANDROID_BUILD_TOP"; #path here must be inside home directory
. $source_tree/vendor/cm/tools/colors
changelog_path_name=CHANGELOG.mkdn #changelog file path/name.extension
source_name="Resurrection Remix Nougat" #Name to display in changelog.md top before version
# input variables end

export Changelog=$source_tree/$changelog_path_name
export Temp_Changelog=$source_tree/$changelog_path_name.temp

if [ -f $Changelog ];
 then
 	rm -f $Changelog
fi
 
touch $Changelog


# ask for days and version
echo ""
echo ${ylw}" ▼ For how many days changelog do you want to generate?"${txtrst}
echo ""
echo -e ${red}" 〉30/sec Time-out (7 days)"${txtrst}
echo -e "";
echo -e ${blu}" ▼ Type a number"${txtrst}
echo -e "";
# use 'export days_to_log=5' before '. build/envsetup.sh' were 5 is days to log
if [ -z $days_to_log ];then
read -r -t 30 days_to_log || days_to_log=7
fi
echo >> $Changelog;
echo " ▼ $source_name Ver 5.8.0 Changelog"    >> $Changelog;
echo '' >> $Changelog;
echo >> $Changelog;

cd $source_tree

for i in $(seq $days_to_log);
do
export After_Date=`date --date="$i days ago" +%m/%d/%Y`
k=$(expr $i - 1)
	export Until_Date=`date --date="$k days ago" +%m/%d/%Y`
    echo ""	
	echo ${ylw}" 〉Generating day number:$i $Until_Date.."${txtrst}
	source=$(repo forall -pc 'git log --oneline --after=$After_Date --until=$Until_Date');

	if [ -n "${source##+([:space:])}" ]; then

		echo " ▼ $Until_Date" >> $Changelog;
		echo '' >> $Changelog;
		repo forall -pc 'git log --oneline --after=$After_Date --until=$Until_Date' | sed 's/^$/#EL /' | sed 's/^/ ▪ /' | sed 's/ ▪ #EL //' >> $Changelog
		echo >> $Changelog;
	fi

done

sed -i 's/* Project /▼ /g' $Changelog

Changelog=$source_tree/$changelog_path_name
if [ -f $Changelog ] && [ -f $Temp_Changelog ];
then
	echo "$(cat $Temp_Changelog)\n$(cat $Changelog)" > $Changelog
	rm -f $Temp_Changelog
fi

echo -e ${blu}"\n √ Changelog successfully generated.\n"${txtrst}
