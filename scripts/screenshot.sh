#! /bin/bash

monitors=`hyprctl monitors | grep "Monitor"`
monitors=`echo -e "Area\nCurrent\nAll\n$monitors\n"`
monitors=`echo "$monitors" | awk '$0=" > "$0'`

selection=`echo -e "$monitors" | dmenu`

case $selection in
	*Area)    grim -g "$(slurp)";;
	*Current) grim;;
	*
esac
