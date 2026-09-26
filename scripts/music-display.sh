#!/bin/bash

STATUS="$(playerctl status 2>/dev/null)" # Empty if err

# Check for empty string
if [[ -z "$STATUS" ]];then
	echo "󰝚  - "
	exit 
fi

URL=$(playerctl metadata --format {{xesam:url}})
SPOTIFY="spotify.com"

if [[ "$URL" == *"$SPOTIFY"* ]];then
	# Spotify playing
	ARTIST="$(playerctl metadata --format {{artist}})"
	TITLE="$(playerctl metadata --format {{title}})"

	echo "󰝚 ${ARTIST} - ${TITLE}"
else
	echo "󰝚  - "
fi
