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

echo -e ${ylw}"\n\n ▼ Do you want to include Superuser (ROOT) in your build?\n"${txtrst}
echo -e "";
echo -e ${blu}" 〉 1- Build with ROOT "${txtrst}${red}"   ︱ Superuser (ROOT) inbuilt will be enabled"${txtrst}
echo -e "";
echo -e ${blu}" 〉 2- Build without ROOT "${txtrst}${red}"︱ Superuser (ROOT) inbuilt will be disabled"${txtrst}
echo -e "";
echo -e ${blu}" 🕑  30/sec Time-out "${txtrst}${red}"     ︱ Superuser (ROOT) enabled by default"${txtrst}
echo -e "";
echo -e ${cya}" ▼ Pick a number"${txtrst}
echo -e "";
$normal
read -t 30 askvariant || auto_root=1
sleep 1
if [ "$auto_root" == "1" ]
then
export WITH_SU=true
$normal
sleep 1
fi
if [ "$askvariant" == "1" ]
then
echo -e "";
echo -e ${blu}" ▪ Building with Superuser (ROOT)"${txtrst}
export WITH_SU=true
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "2" ]
then
echo -e "";
echo -e ${blu}" ▪ Building without Superuser (ROOT) "${txtrst}
export WITH_SU=false
echo -e "";
echo -e "";
$normal
sleep 1
fi
