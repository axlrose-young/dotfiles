#!/bin/bash

THEME=${1:-mono} # defaults to mono

THEME_FILE=~/dotfiles/themes/$THEME/colors.sh

# file check
if [ ! -f "$THEME_FILE" ]; then
	echo "Theme $THEME not found"
	exit 1
fi

# Exporting colors as env vars
set -a
source "$THEME_FILE"
set +a

envsubst < ~/dotfiles/kitty/kitty.conf.template > ~/dotfiles/kitty/kitty.conf
envsubst < ~/dotfiles/dunst/dunstrc.template > ~/dotfiles/dunst/dunstrc
envsubst < ~/dotfiles/rofi/theme.rasi.template > ~/dotfiles/rofi/theme.rasi 
envsubst < ~/src/dwm/config.h.template > ~/src/dwm/config.h

# Wallpaper
feh --bg-fill ~/dotfiles/themes/$THEME/default

cd ~/src/dwm && sudo make clean install
echo -e "\n\nWill EXIT dwm for changes to take place...\n"
sleep 2s
killall dwm
