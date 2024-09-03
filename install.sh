#!/bin/bash
cd $HOME/dotfiles

CONF="$HOME/.config"
SCRIPTS="$HOME/scripts"

cp "$CONF" "$CONF-old"
cp "$SCRIPTS" "$SCRIPTS-old"
cp "$HOME/.bashrc" "$HOME/.bashrc-old"

cp -rip .config "$HOME"
cp -rip scripts "$HOME"
cp -rip .bashrc "$HOME/.bashrc"
