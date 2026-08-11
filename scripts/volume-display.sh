#!/bin/bash

vol=$(awk '{print $2}' <<< $(wpctl get-volume @DEFAULT_SINK@))
first=$(awk -F "." '{print $1}' <<< $vol)
second=$(awk -F "." '{print $2}' <<< $vol)
mute=$(awk '{print $3}' <<< $(wpctl get-volume @DEFAULT_SINK@))

# formatting
if [[ $first == "0"  ]]; then
	printf " %s%% $mute" "$second" 
else 
	printf "  %s%s%% $mute" "$first" "$second" 
fi
