#!/bin/bash
cd $HOME/dotfiles

OLD_CONF="$HOME/.config-old"
CONF="$HOME/.config"

cp "$CONF" "$OLD_CONF"

cp -rip .config "$HOME"
cp -rip scripts "$HOME"
