#!/bin/bash

CHOICE=$(printf "Lock screen\nExit dwm\nHibernate\nReboot\nShutdown" | dmenu -i -p "Power")

confirm(){
	printf "No\nYes" | dmenu -i -p "$1"
}

case $CHOICE in
	"Lock screen") # Yet to implemet lock screen
		echo "locks screen"
		;;
	"Exit dwm")
		killall dwm
		;;
	"Hibernate")
		if [ "$(confirm "Hibernate?")" = "Yes" ];then
			systemctl hibernate
		fi
		;;
	"Reboot")
		if [ "$(confirm "Reboot?")" = "Yes" ];then
			systemctl reboot
		fi
		;;
	"Shutdown")
		if [ "$(confirm "Shutdown?")" = "Yes" ];then
			systemctl poweroff
		fi
		;;	
esac
