#!/bin/bash

echo "Please run this script from within the configs directory. Press enter to begin."
read

CONFIG=".config/*"
HOMEDFILES="./home/.[!.]*"

for i in $CONFIG
do
	echo "Adding $i link.."
	ln -s $(pwd)/$i $HOME/.config/
done


# Link dotfiles in home dir
for i in $HOMEDFILES
do
	echo "Adding $i link.."
	ln -s $(pwd)/$i $HOME/
done
