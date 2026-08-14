#!/bin/bash

THEME=${1:-mono} # defaults to mono

THEME_FILE=~/dotfiles/themes/$THEME.sh

# file check
if [ ! -f "$THEME_FILE" ]; then
	echo "Theme $THEME not found"
	exit 1
fi

set -a
source "$THEME_FILE"
set +a

envsubst < ~/dotfiles/kitty/kitty.conf.template > ~/dotfiles/kitty/kitty.conf
envsubst < ~/dotfiles/dunst/dunstrc.template > ~/dotfiles/dunst/dunstrc
envsubst < ~/dotfiles/rofi/theme.rasi.template > ~/dotfiles/rofi/theme.rasi 

echo "Theme $THEME applied"
