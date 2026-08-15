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
	wpctl \
	brightnessctl 
