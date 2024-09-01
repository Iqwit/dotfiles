imgpath="/tmp/desktop.png"
sleep 0.6
grim $imgpath
magick $imgpath -scale "10%" -blur 0x2 -scale "1000%" $imgpath
pidof hyprlock || hyprlock
