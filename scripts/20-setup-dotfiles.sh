#!/usr/bin/env bash


# copying files and sourcing them in their respective default config files
test -d $DOTFILES_DIR || mkdir $DOTFILES_DIR
cp -rf "$(pwd)/dotfiles/." "$HOME/.dotfiles/"

echo "configuring dotfiles..."
echo $separator

ln -sf "${DOTFILES_DIR}/zshrc" "$HOME/.zshrc" 
ln -sf "${DOTFILES_DIR}/alacritty.yml" "$HOME/.alacritty.yml"
ln -sf "${DOTFILES_DIR}/tmux.conf" "$HOME/.tmux.conf"
ln -sf "${DOTFILES_DIR}/starship.toml" "$HOME/.config/starship.toml"

sudo ln -sf "${DOTFILES_DIR}/custom-xkb-layout" "/usr/share/X11/xkb/symbols/custom"

rm -rf "$HOME/.config/nvim"
ln -sfn "${DOTFILES_DIR}/nvim" "$HOME/.config/"
rm -rf "$HOME/.config/sway"
ln -sfn "${DOTFILES_DIR}/sway" "$HOME/.config/"
rm -rf "$HOME/.config/waybar"
ln -sfn "${DOTFILES_DIR}/waybar" "$HOME/.config/waybar"
rm -rf "$HOME/.config/swaylock"
ln -sfn "${DOTFILES_DIR}/swaylock" "$HOME/.config/swaylock"

'/usr/share/tmux-plugin-manager/scripts/source_plugins.sh'
'/usr/share/tmux-plugin-manager/scripts/install_plugins.sh'

