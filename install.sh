#!/usr/bin/env bash

DOTFILES_DIR="$HOME/.dotfiles"
CURRENT_DIR="$(pwd)"

echo "------------------------------------"
echo "Let's start with the config setup!"
echo "First, let's install the core packages that we need. 
For some of them, your password is needed."

#read -r -s $passwd
#sleep 1

# FIRST WE WILL INSTALL THE CORE PACKAGES OF MY SETUP.
# For the Personal Development Environment.

core_packages_list=(
	"zsh"
	"zsh-completions"
	"zsh-autosuggestions" 
	"zsh-syntax-highlighting"
	"zsh-thefuck-git"
	"starship"
	"alacritty"
	"tmux"
	"tmux-plugin-manager"
	)

source "./scripts/check-and-install-packages.sh" "${core_packages_list[@]}"

# copying files and sourcing them in their respective default config files
test -d $DOTFILES_DIR || mkdir $DOTFILES_DIR
cp -rf "$(pwd)/config/." "$HOME/.dotfiles/"

echo "------------------------------------"
echo "configuring dotfiles..."

ln -s -f "${DOTFILES_DIR}/zsh" "$HOME/.zshrc" 
ln -s -f "${DOTFILES_DIR}/alacritty.yml" "$HOME/.alacritty.yml"
ln -s -f "${DOTFILES_DIR}/tmux.conf" "$HOME/.tmux.conf"
ln -s -f "${DOTFILES_DIR}/starship.toml" "$HOME/.config/starship.toml"

echo "------------------------------------"
'/usr/share/tmux-plugin-manager/scripts/source_plugins.sh'
'/usr/share/tmux-plugin-manager/scripts/install_plugins.sh'

if test $ZSH_NAME != zsh; then
	sudo chsh -s /bin/zsh #<<< "$passwd" 
	zsh
fi

#alacritty --hold --working-directory "$(pwd)" -e "$(pwd)/keep-going.sh"

utils_list=(
	"auto-cpufreq"
)

source "./scripts/check-and-install-packages.sh" "${utils_list[@]}"

pacman -Qs auto-cpufreq	&&
	echo "Enabling auto-cpufreq as a systemctl service" &&
	# check if enabled and then -----
	#systemctl start auto-cpufreq.service &&
	#systemctl enable auto-cpufreq.service

#sway stuff
#./config/sway/config && .config/sway/default sobre todo
echo "------------------------------------"
