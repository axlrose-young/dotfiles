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
	bluetoothctl \
	wireplumber \
	brightnessctl \
	feh

# Xinitrc setup 
ln -s ~/dotfiles/xinit/.xinitrc ~/.xinitrc
