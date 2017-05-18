#!/bin/bash

# Specify colors for shell
red='tput setaf 1'              # red
green='tput setaf 2'            # green
yellow='tput setaf 3'           # yellow
blue='tput setaf 4'             # blue
violet='tput setaf 5'           # violet
cyan='tput setaf 6'             # cyan
white='tput setaf 7'            # white
txtbld=$(tput bold)             # Bold
bldred=${txtbld}$(tput setaf 1) # Bold red
bldgrn=${txtbld}$(tput setaf 2) # Bold green
bldblu=${txtbld}$(tput setaf 4) # Bold blue
bldcya=${txtbld}$(tput setaf 6) # Bold cyan
normal='tput sgr0'

./vendor/cm/tools/colors

echo -e "";
echo -e "";
tput setaf 1
echo "	 ______                                                _             ";
echo "	(_____ \                                           _  (_)            ";
echo "	 _____) )_____  ___ _   _  ____ ____ _____  ____ _| |_ _  ___  ____  ";
echo "	|  __  /| ___ |/___) | | |/ ___) ___) ___ |/ ___|_   _) |/ _ \|  _ \ ";
echo "	| |  \ \| ____|___ | |_| | |  | |   | ____( (___  | |_| | |_| | | | |";
echo "	|_|   |_|_____|___/|____/|_|  |_|   |_____)\____)  \__)_|\___/|_| |_|";
echo "	                                                                     ";
tput setaf 3
echo "		     ______              _          _______ ______                 ";
echo "		    (_____ \            (_)        (_______) _____)                ";
echo "		     _____) )_____ ____  _ _   _    _     ( (____                  ";
echo "		    |  __  /| ___ |    \| ( \ / )  | |   | \____ \                 ";
echo "		    | |  \ \| ____| | | | |) X (   | |___| |____) )                ";
echo "		    |_|   |_|_____)_|_|_|_(_/ \_)   \_____(______/                 ";
echo "	                                                                     ";
tput setaf 2
echo "	    ______                                     ___       _  _ _ _    ";
echo "	   / _____)                                   / __)     | || | | |   ";
echo "	  ( (____  _   _  ____ ____ _____  ___  ___ _| |__ _   _| || | | |   ";
echo "	   \____ \| | | |/ ___) ___) ___ |/___)/___|_   __) | | | ||_|_|_|   ";
echo "	   _____) ) |_| ( (__( (___| ____|___ |___ | | |  | |_| | | _ _ _    ";
echo "	  (______/|____/ \____)____)_____|___/(___/  |_|  |____/ \_)_|_|_|   ";
echo "	                                                                     ";
tput setaf 1
echo -e " 〉Powered by ANDROID ™  // NOUGAT ";
echo -e "";
tput setaf 3
echo -e " 〉Enjoy the Resurrection Remix OS // #GETRESURRECTED ";
tput sgr0
echo -e "";
