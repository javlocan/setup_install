#!/usr/bin/env bash

SCRIPTS_DIR="$(pwd)/scripts"

source "$SCRIPTS_DIR/00-export-variables.sh"

echo $separator 
echo "Let's start with the config setup!"
echo "But first thing first. Let's update the system."
echo $separator

yay -Syu

echo "Now, let's install the core packages that we need. 
For some of them, your password is needed."


source "$SCRIPTS_DIR/10-install-dotfiles.sh"
source "$SCRIPTS_DIR/20-setup-dotfiles.sh"
#source "$SCRIPTS_DIR/30-utils.sh"


#sway stuff
#./config/sway/config && .config/sway/default sobre todo
