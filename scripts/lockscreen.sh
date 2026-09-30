#!/bin/bash

i3lock \
    --blur 8 \
    --indicator \
    --radius 15 \
    --ring-width 2 \
    --ind-pos="x+(w/2):y+h-50" \
    --inside-color=00000000 \
    --ring-color=ffffffff \
    --line-color=00000000 \
    --insidever-color=00000000 \
    --ringver-color=ffffffff \
    --insidewrong-color=00000000 \
    --ringwrong-color=ffffffff \
    --keyhl-color=ffffffff \
    --bshl-color=ffffffff \
    --clock \
    --time-str="%H:%M" \
    --time-pos="x+(w/2):y+(h/2)" \
    --time-align=0 \
    --time-color=ffffffff \
    --time-font="JetBrainsMono Nerd Font" \
    --time-size=64 \
    --date-color=ffffffff \
    --date-font="JetBrainsMono Nerd Font" \
    --date-size=20 \
    --date-str="%a %-d %b" \
    --verif-text="" \
    --wrong-text=""
