#!/bin/bash
#Installer for red-get

bold="\e[1m"
reset="\e[0m"

wd=$(pwd)

echo ""

#Install prompt
echo -e "${bold}RedGet Installer${reset}"
echo -e "Are you sure you want to install red-get? Press RETURN to start install. Press CTRL+C to abort."
read

#Install

#Create Files
echo "Creating Folders..."
cd ~/
mkdir .redget
mkdir .redget/apps
mkdir .redget/core

#Install Core from GitHub
echo "Installing Core.."
cd .redget/core
wget -o red-get raw.githubusercontent.com/RedBigz/red-get/core/core-get.py

#Finished
echo "Remember to add it to the path if you haven't already:"
echo "export PATH=$PATH:/home/$USER/.redget/core"

echo ""

echo "To uninstall type:"
echo "export PATH=$PATH"
echo "rm -rf /home/$USER/.redget"

cd "$wd"
