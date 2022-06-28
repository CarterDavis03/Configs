#!/bin/bash

echo "!!!WARNING!!!"
printf "This script will delete all files in the place of my configs, this may nuke your system. All configs are made to work on my system and may not necessarily work on yours.\nPlease look through the configs to make sure you know what they do and that you actually want them.\nAlso, please run this script from within the folder that contains the install script as it expects it to be ran from there and could have majorly bad consequences if not ran correctly.\nPress enter to begin."
read

CONFIG=".config/*"
HOMEDFILES="./home/.[!.]*"
LOCSHRAPP="./.local/share/applications/*"

for i in $CONFIG
do
	rm -fr $HOME/$i 2> /dev/null
	echo "Adding $i link.."
	ln -s $(pwd)/$i $HOME/.config/
done

for i in $LOCSHRAPP
do
	rm -fr $HOME/$i 2> /dev/null
	echo "Adding $i link.."
	ln -s $(pwd)/$i $HOME/.local/share/applications/
done

# Link dotfiles in home dir
for i in $HOMEDFILES
do
	iHOME=$(sed 's/.\/home\///' <<< $i)
	rm -fr $HOME/$iHOME 2> /dev/null
	echo "Adding $i link.."
	ln -s $(pwd)/$i $HOME/
done

printf "\nAll done. Please scroll through and check that there are no errors.\nIf there are.. system go bye bye (probably not, likely just some extra clutter to clean up)\n"
