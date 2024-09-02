#!/bin/bash
cd ~/dotfiles

OLD_CONF="$HOME/.config-old"
CONF="$HOME/.config"

backup_config () {
  if ! [ -d "$OLD_CONF" ]; then
    mkdir "$OLD_CONF"
  fi
  subdir="$1"
  if [ -d "$OLD_CONF/$subdir" ]; then
    mv "$CONF/$subdir" "$OLD_CONF"
  fi
}

backup_config hypr
backup_config waybar

cp -r .config/hypr "$CONF"
cp -r .config/waybar "$CONF"
