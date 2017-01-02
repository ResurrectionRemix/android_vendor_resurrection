#!/bin/bash
# Build type chooser for the Resurrection Remix ROM
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

echo -e ${ylw}"\n\n ▼ Which build-type do you want to choose?\n"${txtrst}
echo -e "";
echo -e ${blu}" 〉 1- Official "${txtrst}${red}"    ︱ Only for the official builds by the maintainers"${txtrst}
echo -e "";
echo -e ${blu}" 〉 2- Unofficial "${txtrst}${red}"  ︱ For the unofficial builds"${txtrst}
echo -e "";
echo -e ${blu}" 〉 3- Nightly "${txtrst}${red}"     ︱ Only for the official daily builds by the maintainers"${txtrst}
echo -e "";
echo -e ${blu}" 〉 4- Weekly "${txtrst}${red}"      ︱ Only for the official weekly builds by the maintainers"${txtrst}
echo -e "";
echo -e ${blu}" 〉 5- Release "${txtrst}${red}"     ︱ Only for the official releases by the RR-Team"${txtrst}
echo -e "";
echo -e ${blu}" 〉 6- Milestone "${txtrst}${red}"   ︱ Only for the milestone releases by the RR-Team"${txtrst}
echo -e "";
echo -e ${blu}" 〉 7- Experimental "${txtrst}${red}"︱ Only for the experimental releases by the RR-Team"${xtrst}
echo -e "";
echo -e ${blu}" 〉 8- Final "${txtrst}${red}"       ︱ Only for the final releases by the RR-Team"${xtrst}
echo -e "";
echo -e ${blu}" 🕑  30/sec Time-out"${txtrst}${red}"︱ Default option"${txtrst}
echo -e "";
echo -e ${cya}" ▼ Pick a number"${txtrst}
echo -e "";
$normal
read -t 30 askvariant
sleep 1
if [ "$askvariant" == "1" ]
then
echo -e "";
echo -e ${blu}" ▪ Building official variant "${txtrst}
export RR_BUILDTYPE=Official
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "2" ]
then
echo -e "";
echo -e ${blu}" ▪ Building unofficial variant "${txtrst}
export RR_BUILDTYPE=Unofficial
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "3" ]
then
echo -e "";
echo -e ${blu}" ▪ Building nightly variant "${txtrst}
export RR_BUILDTYPE=Nightly
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "4" ]
then
echo -e "";
echo -e ${blu}" ▪ Building weekly variant "${txtrst}
export RR_BUILDTYPE=Weekly
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "5" ]
then
echo -e "";
echo -e ${blu}" ▪ Building release variant "${txtrst}
export RR_BUILDTYPE=Release
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "6" ]
then
echo -e "";
echo -e ${blu}" ▪ Building milestone variant "${txtrst}
export RR_BUILDTYPE=Milestone
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "7" ]
then
echo -e "";
echo -e ${blu}" ▪ Building experimental variant "${txtrst}
export RR_BUILDTYPE=Experimental
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "8" ]
then
echo -e "";
echo -e ${blu}" ▪ Building final variant "${txtrst}
export RR_BUILDTYPE=Final
echo -e "";
echo -e "";
$normal
sleep 1
fi
