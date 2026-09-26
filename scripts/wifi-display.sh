#!/bin/bash

SIGNAL=$(nmcli -t -f IN-USE,SIGNAL dev wifi | grep '^\*' | cut -d: -f2)

if [[ -n "$SIGNAL" ]]; then
    printf "  %s%%" "$SIGNAL"
else
    printf "  -"
fi
