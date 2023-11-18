#!/usr/bin/env bash

export separator="-----------------------------------------"

echo $separator
echo "Sourcing variables..."
echo $separator

export DOTFILES_DIR="$HOME/.dotfiles"
export CURRENT_DIR="$(pwd)"

export core_packages_list=(
	"zsh"
	"zsh-completions"
	"zsh-autosuggestions" 
	"zsh-syntax-highlighting"
	"zsh-thefuck-git"
	"starship"
	"ttf-jetbrains-mono-nerd"
	"alacritty"
	"tmux"
	"tmux-plugin-manager"
	"neovim"
	)

export utils_list=(
	"auto-cpufreq"
)
