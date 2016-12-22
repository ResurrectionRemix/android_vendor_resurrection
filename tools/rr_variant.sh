#!/bin/bash
# Build type chooser for the Resurrection Remix ROM
. $ANDROID_BUILD_TOP/vendor/cm/tools/colors
echo -e ${ylw}"\n\n ▼ Which build type do you want to choose?\n"${txtrst}
echo -e "";
echo -e ${cya}" 〉1- Official"${txtrst}
echo -e "";
echo -e ${cya}" 〉2- Unofficial"${txtrst}
echo -e "";
echo -e ${cya}" 〉3- Nightly"${txtrst}
echo -e "";
echo -e ${cya}" 〉4- Weekly"${txtrst}
echo -e "";
echo -e ${red}" 〉30/sec Time-out (unofficial)"${txtrst}
echo -e "";
echo -e ${blu}" ▼ Pick a number"${txtrst}
echo -e "";
$normal
if [ -z $askvariant ];then
read -t 30 askvariant || autovariant=1
fi
sleep 1
if [ "$autovariant" == "1" ]
then
RR_BUILDTYPE=unofficial
$normal
sleep 1
fi
if [ "$askvariant" == "1" ]
then
echo -e "";
echo -e ${blu}" ▪ Building official variant "${txtrst}
RR_BUILDTYPE=official
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "2" ]
then
echo -e "";
echo -e ${blu}" ▪ Building unofficial variant "${txtrst}
RR_BUILDTYPE=unofficial
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "3" ]
then
echo -e "";
echo -e ${blu}" ▪ Building nightly variant "${txtrst}
RR_BUILDTYPE=nightly
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "4" ]
then
echo -e "";
echo -e ${blu}" ▪ Building weekly variant "${txtrst}
RR_BUILDTYPE=weekly
echo -e "";
echo -e "";
$normal
sleep 1
fi
