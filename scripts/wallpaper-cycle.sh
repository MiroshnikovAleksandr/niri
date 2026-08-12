#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers"

if [ ! -d "$WALLPAPER_DIR" ]; then
    mkdir -p "$WALLPAPER_DIR"
fi

while true; do
    RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \) | shuf -n 1)
    
    pkill swaybg
    
    if [ -n "$RANDOM_WALLPAPER" ]; then
        pkill swaybg
        swaybg -i "$RANDOM_WALLPAPER" -m fill &
    fi
    
    sleep 180
done
