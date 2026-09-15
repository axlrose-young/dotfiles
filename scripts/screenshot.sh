#!/bin/bash

FILE=$(date "+%Y-%m-%d_%H-%M-%S").png
DIR="$HOME/pictures/screenshots"

SS="$DIR/$FILE"

case "$1" in
	full)
		maim "$SS"
		notify-send "SS" "Screenshot copied to clipboard"
		;;
	select)
		if maim -s "$SS";then
			notify-send "SS" "Screenshot copied to clipboard"
		fi	
		;;
esac
xclip -selection clipboard -t image/png -i $SS
