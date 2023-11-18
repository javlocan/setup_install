#!/usr/bin/env bash

export hlfseparator="-----------------------"
export separator="-----------------------------------------"
export dblseparator="\n-----------------------------------------"

echo -e $dblseparator
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
	"ttf-jetbrains-mono-nerd"
	"starship"
	"fzf"
	"alacritty"
	"tmux"
	"tmux-plugin-manager"
	"neovim"
	)

export utils_list=(
	"auto-cpufreq"
)
