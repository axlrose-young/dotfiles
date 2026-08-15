#!/bin/bash

# Install packages needed
sudo pacman -S --noconfirm --needed bash \
xorg-server \
xorg-xinit \
vim \
kitty \
ttf-jetbrains-mono-nerd \
starship \
rofi \
dunst \
libnotify \
picom \
xclip \
maim \
networkmanager \
bluetui \
bluez-utils \
wireplumber \
brightnessctl \
feh

fc-cache -fv

# Home dir setup symlinks
ln -sf ~/dotfiles/xinit/.xinitrc ~/.xinitrc
ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc
ln -sf ~/dotfiles/bash/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc

# .Config dir setup symlinks
mkdir -p ~/.config
ln -sf ~/dotfiles/dunst ~/.config/dunst
ln -sf ~/dotfiles/kitty ~/.config/kitty
ln -sf ~/dotfiles/rofi ~/.config/rofi
ln -sf ~/dotfiles/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc

echo -e "\n\nDotfiles setup\n"
echo -e "Logout for changes to take place\n"
