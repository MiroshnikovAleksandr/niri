#!/usr/bin/env bash

export WALLPAPER_DIR="$HOME/Pictures/wallpapers"

if [ ! -d "$WALLPAPER_DIR" ]; then
    mkdir -p "$WALLPAPER_DIR"
fi

while true; do
    ~/.config/niri/scripts/wallpaper-switch.sh
    
    sleep 180
done
