#!/usr/bin/env bash

source "./scripts/check-and-install-packages.sh" "${utils_list[@]}"

echo -e $dblseparator
echo "Installing utils..." 
echo $separator
pacman -Qs auto-cpufreq	&&
	echo "Enabling auto-cpufreq as a systemctl service" &&
	# check if enabled and then -----
	systemctl start auto-cpufreq.service &&
	systemctl enable auto-cpufreq.service
