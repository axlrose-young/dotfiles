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

# Xinitrc setup 
ln -sf ~/dotfiles/xinit/.xinitrc ~/.xinitrc
