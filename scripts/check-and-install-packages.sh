#!/usr/bin/env bash

packages_list=("$@")

echo $hlfseparator

for pkg in "${packages_list[@]}"; do

	if sudo pacman -Qs "$pkg" > /dev/null ; then
		echo "$pkg already installed..."
		echo $hlfseparator
	else
		echo "installing $pkg..."
		echo $hlfseparator
		#yay -S -q "$pkg"
		yes | yay -S -q "$pkg"
	fi
done


