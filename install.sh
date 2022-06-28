#!/bin/bash

echo "Please run this script from within the configs directory. Press enter to begin."
read

CONFIG=".config/*"
HOMEDFILES="./home/.[!.]*"
LOCSHRAPP="./.local/share/applications/*"

for i in $CONFIG
do
	echo "Adding $i link.."
	ln -s $(pwd)/$i $HOME/.config/
done

for i in $LOCSHRAPP
do
	echo "Adding $i link.."
	ln -s $(pwd)/$i $HOME/.local/share/applications/
done

# Link dotfiles in home dir
for i in $HOMEDFILES
do
	echo "Adding $i link.."
	ln -s $(pwd)/$i $HOME/
done
