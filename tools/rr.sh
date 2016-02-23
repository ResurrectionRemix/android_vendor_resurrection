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

tput setaf 1
tput bold
echo -e "";
echo -e " Build is Succesfully Done !!";
echo -e "";
echo -e "";
echo -e "           _____                    _____          ";
echo -e "          /\    \                  /\    \         ";
echo -e "         /::\    \                /::\    \        ";
echo -e "        /::::\    \              /::::\    \       ";
echo -e "       /::::::\    \            /::::::\    \      ";
tput setaf 6
echo -e "      /:::/\:::\    \          /:::/\:::\    \     ";
echo -e "     /:::/__\:::\    \        /:::/__\:::\    \    ";
echo -e "    /::::\   \:::\    \      /::::\   \:::\    \   ";
tput setaf 7
echo -e "   /::::::\   \:::\    \    /::::::\   \:::\    \  ";
echo -e "  /:::/\:::\   \:::\____\  /:::/\:::\   \:::\____\ ";
echo -e " /:::/  \:::\   \:::|    |/:::/  \:::\   \:::|    |";
tput setaf 3
echo -e " \::/   |::::\  /:::|____|\::/   |::::\  /:::|____|";
echo -e "  \/____|:::::\/:::/    /  \/____|:::::\/:::/    / ";
echo -e "        |:::::::::/    /         |:::::::::/    /  ";
tput setaf 5
echo -e "        |::|\::::/    /          |::|\::::/    /   ";
echo -e "        |::| \::/____/           |::| \::/____/    ";
echo -e "        |::|  ~|                 |::|  ~|          ";
tput setaf 4
echo -e "        |::|   |                 |::|   |          ";
echo -e "        \::|   |                 \::|   |          ";
echo -e "         \:|   |                  \:|   |          ";
echo -e "          \|___|                   \|___|          ";
echo -e "                                                  ";
echo -e "                                                  ";
echo -e "                                                  ";
tput setaf 1
tput bold
echo -e " ██▒▒░░ R E S U R R E C T I O N  R E M I X  O S ░░▒▒██";
echo -e "                                                  ";
echo -e "";
tput sgr0
tput setaf 4
tput bold
echo -e " Powered by ANDROID™ // MARSHMALLOW";
echo -e "";
tput sgr0
echo -e "";
