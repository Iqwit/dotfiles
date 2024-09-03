#!/bin/bash
cd $HOME/dotfiles

CONF="$HOME/.config"
SCRIPTS="$HOME/scripts"

cp -ripy "$CONF" "$CONF-old"
cp -ripy "$SCRIPTS" "$SCRIPTS-old"
cp -ripy "$HOME/.bashrc" "$HOME/.bashrc-old"

cp -ripy .config "$HOME"
cp -ripy scripts "$HOME"
cp -ripy .custompromptrc "$HOME"
echo ". .custompromptrc" >> "$HOME/.bashrc"
