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

# Home dir setup symlinks
ln -sf ~/dotfiles/xinit/.xinitrc ~/.xinitrc
ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc
ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc

# .Config dir setup symlinks
mkdir -p ~/.config
ln -sf ~/dotfiles/dunst ~/.config/dunst
ln -sf ~/dotfiles/kitty ~/.config/kitty
ln -sf ~/dotfiles/rofi ~/.config/rofi

cd ~/dotfiles/src/dwm && sudo make clean install
cd ~/dotfiles/src/slstatus && sudo make clean install
