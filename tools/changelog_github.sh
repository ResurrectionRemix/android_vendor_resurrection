#!/bin/bash
# Simple sh to automatic generate a repo changelog
# Specify colors utilized in the terminal
    red=$(tput setaf 1)             #  red
    grn=$(tput setaf 2)             #  green
    ylw=$(tput setaf 3)             #  yellow
    blu=$(tput setaf 4)             #  blue
    ppl=$(tput setaf 5)             #  purple
    cya=$(tput setaf 6)             #  cyan
    txtbld=$(tput bold)             #  Bold
    bldred=${txtbld}$(tput setaf 1) #  red
    bldgrn=${txtbld}$(tput setaf 2) #  green
    bldylw=${txtbld}$(tput setaf 3) #  yellow
    bldblu=${txtbld}$(tput setaf 4) #  blue
    bldppl=${txtbld}$(tput setaf 5) #  purple
    bldcya=${txtbld}$(tput setaf 6) #  cyan
    txtrst=$(tput sgr0)             #  Reset
    rev=$(tput rev)                 #  Reverse color
    pplrev=${rev}$(tput setaf 5)
    cyarev=${rev}$(tput setaf 6)
    ylwrev=${rev}$(tput setaf 3)
    blurev=${rev}$(tput setaf 4)
    normal='tput sgr0'

# input variables set the below the rest must be automatic
source_tree="${ANDROID_BUILD_TOP}"; #path here must be inside home directory
changelog_path_name=CHANGELOG.mkdn #changelog file path/name.extension
source_name="Resurrection Remix Pie" #Name to display in changelog.md top before version
# input variables end

if [ -z ${source_tree} ]; then
	echo "Please run '. build/envsetup.sh' first";
else
	export Changelog=$source_tree/$changelog_path_name
	export Temp_Changelog=$source_tree/$changelog_path_name.temp

	if [ -f $Changelog ]; then
	 	rm -f $Changelog
	fi

	touch $Changelog

	days_to_log=180

	echo ${cya}" ▼ Generating (for last $days_to_log days) github format changelog.."${txtrst}

	echo >> $Changelog;
	echo "$source_name Version $(grep PRODUCT_VERSION vendor/rr/build/core/main_version.mk | head -1 | cut -d= -f2 | cut -d' ' -f2) Changelog" >> $Changelog;
	echo '===============' >> $Changelog;
	echo >> $Changelog;

	cd $source_tree

	contains() {
		string="$1"
		substring="$2"
		if test "${string#*$substring}" != "$string"; then
		return 0    # $substring is in $string
		else
			return 1    # $substring is not in $string
		fi
	}

	#https://stackoverflow.com/questions/296536/how-to-urlencode-data-for-curl-command
	rawurlencode() {
		local string="${1}"
		local strlen=${#string}
		local encoded=""
		local pos c o

		for (( pos=0 ; pos<strlen ; pos++ )); do
			c=${string:$pos:1}
			case "$c" in
			[-_.~a-zA-Z0-9] ) o="${c}" ;;
			* )               printf -v o '%%%02x' "'$c"
			esac
			encoded+="${o}"
		done
		echo "${encoded}"    # You can either set a return variable (FASTER) 
		REPLY="${encoded}"   #+or echo the result (EASIER)... or both... :p
	}

	git_log_repo() {
		repo forall -pc 'git log --oneline --after='$1' --until='$2 | grep -v "Automatic translation import" | grep -v "Merge" | sed 's/^$/#EL /' | sed 's/^/* /' | sed 's/* #EL //' | sed 's/* //' | while read string; do
			project=0;
			temp_test="$string"
			contains "$temp_test" "project" && project=1;
			if [ "$project" == 1 ]; then
				addproject=1;
				projectpath=$string
			fi
			if [ -n "${string##+([:space:])}" ]; then
				if [ "$project" == 0 ]; then
					if [ "$addproject" == 1 ]; then
						echo >> $Changelog;
						echo "* $projectpath" >> $Changelog;
						addproject=0;
					fi
					temp_one=$(echo "$string" | sed 's/^[^ ]* //g')
					echo "* [$temp_one](https://github.com/search?q=$( rawurlencode "$temp_one" )&type=Commits)" >> $Changelog;
				fi;
			fi
		done
		echo >> $Changelog;
		echo "#### $source_name source changes of $Until_Date End." >>  $Changelog;
		echo >> $Changelog;
	}

	for i in $(seq $days_to_log);
	do
	export After_Date=`date --date="$i days ago" +%m-%d-%Y`
	k=$(expr $i - 1)
		export Until_Date=`date --date="$k days ago" +%m-%d-%Y`

		echo ${blu}" 〉 Generating day number $i ▪ $Until_Date.."${txtrst}

		source=$(repo forall -pc 'git log --oneline --after=$After_Date --until=$Until_Date' | grep -v "Automatic translation import" | grep -v "Merge" );

		if [ -n "${source##+([:space:])}" ]; then
			# Line with after --- until was too long for a small ListView
			echo -e "$Until_Date" >> $Changelog;
			echo '===============' >> $Changelog;
			git_log_repo $After_Date $Until_Date
		fi

	done

	sed -i 's/* project /#### /g' $Changelog
	echo >> $Changelog;

	echo -e ${ylw}"\n √ Changelog successfully generated (file is $Changelog).\n"${txtrst}
fi

exit;
