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
tput setaf 4
echo -e "              GGGGGGGGGGGGG       OOOOOOOOO       TTTTTTTTTTTTTTTTTTTTTTT";
echo -e "           GGG::::::::::::G     OO:::::::::OO     T:::::::::::::::::::::T";
echo -e "         GG:::::::::::::::G   OO:::::::::::::OO   T:::::::::::::::::::::T";
tput setaf 2
echo -e "        G:::::GGGGGGGG::::G  O:::::::OOO:::::::O  T:::::TT:::::::TT:::::T";
echo -e "       G:::::G       GGGGGG  O::::::O   O::::::O  TTTTTT  T:::::T  TTTTTT";
tput setaf 3
echo -e "      G:::::G                O:::::O     O:::::O          T:::::T        ";
echo -e "      G:::::G                O:::::O     O:::::O          T:::::T        ";
echo -e "      G:::::G    GGGGGGGGGG  O:::::O     O:::::O          T:::::T        ";
tput setaf 1
echo -e "      G:::::G    G::::::::G  O:::::O     O:::::O          T:::::T        ";
echo -e "      G:::::G    GGGGG::::G  O:::::O     O:::::O          T:::::T        ";
echo -e "      G:::::G        G::::G  O:::::O     O:::::O          T:::::T        ";
tput setaf 5
echo -e "       G:::::G       G::::G  O::::::O   O::::::O          T:::::T        ";
echo -e "        G:::::GGGGGGGG::::G  O:::::::OOO:::::::O        TT:::::::TT      ";
echo -e "         GG:::::::::::::::G   OO:::::::::::::OO         T:::::::::T      ";
tput setaf 7
echo -e "           GGG::::::GGG:::G     OO:::::::::OO           T:::::::::T      ";
echo -e "              GGGGGG   GGGG       OOOOOOOOO             TTTTTTTTTTT  ";
echo -e "";
echo -e "";
tput setaf 7
echo -e "   ##~~##~~#####~~~##~~~##~#####~~~##      ~####~~~~#### ";
tput setaf 2
echo -e "   ###~##~~##~~~~~~##~~~##~##~~~~~~##      ##~~##~~## ";
tput setaf 3
echo -e "   ##~###~~####~~~~##~#~##~####~~~~##      ##~~##~~~#### ";
tput setaf 1
echo -e "   ##~~##~~##~~~~~~#######~##~~~~~~##      ##~~##~~~~~~## ";
tput setaf 4
echo -e "   ##~~##~~#####~~~~##~##~~#####~~~######  ~####~~~~#### ";
echo -e " ";


echo -e "";
echo -e "";
tput sgr0
tput setaf 3
echo -e "";
echo -e " √ Build is Succesfully Done! ";
echo -e "";

tput setaf 4
echo -e " 〉Powered by ANDROID ™  // MARSHMALLOW";
echo -e "";
tput setaf 1
echo -e " 〉Enjoy the Newel OS // #GETNEWEL ";
tput sgr0
echo -e "";
