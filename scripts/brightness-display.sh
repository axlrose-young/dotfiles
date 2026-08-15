#!/bin/bash

val=$(brightnessctl g)

if [[ val -gt 60 ]]; then
	printf "󰃚 %s" "$val" 
else
	printf "󰃜 %s" "$val"
fi
