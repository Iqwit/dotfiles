#! /bin/bash

monitors=`hyprctl monitors | grep "Monitor"`
monitors=`echo -e "$monitors\n..."`
monitors=`echo "$monitors" | awk '$0=" > "$0'`

choice=`echo -e "\
Screenshot\n\
Screenrecord\n" | dmenu -p ""`

case $choice in
	"Screenshot") ~/scripts/screenshot.sh;;
	"Screenrecord") ~/scripts/screenrecord.sh;;
esac
