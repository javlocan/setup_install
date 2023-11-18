#!/usr/bin/env bash

echo $separator
echo "Proceeding to install core packages"
echo $separator

source "./scripts/check-and-install-packages.sh" "${core_packages_list[@]}"
