#!/bin/bash
cd $HOME/dotfiles

CONF="$HOME/.config"
SCRIPTS="$HOME/scripts"

cp -rp "$CONF" "$CONF-old"
cp -rp "$SCRIPTS" "$SCRIPTS-old"
cp -rp "$HOME/.bashrc" "$HOME/.bashrc-old"

cp -rp .config "$HOME"
cp -rp scripts "$HOME"
cp -rp .custompromptrc "$HOME"
echo ". .custompromptrc" >> "$HOME/.bashrc"
