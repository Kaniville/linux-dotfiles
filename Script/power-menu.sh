#!/bin/bash

var+=("power off")
var+=("reboot")
var+=("lock")
var+=("exit i3")
var+=("exit bspwm")

CHOICE=$(printf '%s\n' "${var[@]}" | rofi -dmenu -config ~/.config/rofi/config.rasi -p "power ")

if [ "$CHOICE" = "power off" ]; then
	shutdown -h now
fi

if [ "$CHOICE" = "reboot" ]; then
	reboot
fi

if [ "$CHOICE" = "lock" ]; then
	i3lock -c f7ca88
fi

if [ "$CHOICE" = "exit i3" ]; then
	i3-msg exit
fi

if [ "$CHOICE" = "exit bspwm" ]; then
	bspc quit
fi
