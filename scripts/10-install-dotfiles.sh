#!/usr/bin/env bash

echo -e $dblseparator
echo "Proceeding to install core packages"
echo $separator

source "./scripts/check-and-install-packages.sh" "${core_packages_list[@]}"
