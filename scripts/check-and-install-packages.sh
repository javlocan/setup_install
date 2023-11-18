#!/usr/bin/env bash

packages_list=("$@")

for pkg in "${packages_list[@]}"; do

	if sudo pacman -Qs "$pkg" > /dev/null ; then
		echo "$pkg already installed..."
		echo $separator
	else
		echo "installing $pkg..."
		echo $separator
		#yay -S -q "$pkg"
		yes | yay -S -q "$pkg"
	fi
done


