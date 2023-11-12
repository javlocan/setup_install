#!/usr/bin/env bash

# start installing shell defaults

packages_list=("$@")

for pkg in "${packages_list[@]}"; do

	if sudo pacman -Qs "$pkg" > /dev/null ; then
		echo "------------------------------------"
		echo "$pkg already installed..."
	else
		echo "------------------------------------"
		echo "installing $pkg..."
		yay -S -q "$pkg"
		#yes | yay -S -q "$pkg"
	fi
done


