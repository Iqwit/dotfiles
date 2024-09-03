#!/bin/bash

CONF="$HOME/.config"
SCRIPTS="$HOME/scripts"

cp -rp "$CONF" "$CONF-old"
cp -rp "$SCRIPTS" "$SCRIPTS-old"
cp -rp "$HOME/.bashrc" "$HOME/.bashrc-old"

cp -rp .config "$HOME"
cp -rp scripts "$HOME"
cp -rp .custompromptrc "$HOME"
echo ". .custompromptrc" >> "$HOME/.bashrc"

wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Mononoki.zip

mkdir --parents ~/.local/share/fonts
unzip ~/.local/share/fonts/Mononoki.zip -d ~/.local/share/fonts
rm ~/.local/share/fonts/Mononoki.zip
fc-cache -fv
