#!/bin/bash

echo "Please run this script from within the configs directory. Press enter to begin."
read

CONFIG=".config/*"

for i in $CONFIG
do
	echo "Adding $i link.."
	ln -s $(pwd)/$i $HOME/.config/
done
