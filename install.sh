#!/bin/bash
cd $HOME/dotfiles

OLD_CONF="$HOME/.config-old"
CONF="$HOME/.config"

cp "$CONF" "$OLD_CONF"

cp -r .config/hypr "$CONF"
cp -r .config/waybar "$CONF"
