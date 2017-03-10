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

echo -e ${ylw}"\n\n ▼ Would you like root in your build?\n"${txtrst}
echo -e "";
echo -e ${blu}" 〉 1- Magisk "${txtrst}${red}"    ︱ Build & root with Magisk "${txtrst}
echo -e "";
echo -e ${blu}" 〉 2- Inbuilt root "${txtrst}${red}"  ︱ Use Only inbuilt Root"${txtrst}
echo -e "";
echo -e ${blu}" 〉 3- Rootless "${txtrst}${red}"     ︱ Dont root my device"${txtrst}
echo -e "";
$normal
read -t 30 askvariant
sleep 1
if [ "$askvariant" == "1" ]
then
echo -e "";
echo -e ${blu}" ▪ Building with magisk "${txtrst}
export WITH_SU=false
export BUILD_MAGISK=true
export ROOT_ENABLED=true
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "2" ]
then
echo -e "";
echo -e ${blu}" ▪ Building with inbuilt su root "${txtrst}
export WITH_SU=true
export BUILD_MAGISK=false
export ROOT_ENABLED=true
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "3" ]
then
echo -e "";
echo -e ${blu}" ▪ Your device will be completely unrooted "${txtrst}
export WITH_SU=false
export BUILD_MAGISK=false
export ROOT_ENABLED=true
echo -e "";
echo -e "";
$normal
sleep 1
fi
