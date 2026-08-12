#!/usr/bin/env bash

if [ -z "$WALLPAPER_DIR" ]; then
    echo WALLPAPER_DIR not set
    exit 1
fi

RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \) | shuf -n 1)

if [ -n "$RANDOM_WALLPAPER" ]; then
    swaybg -i "$RANDOM_WALLPAPER" -m fill &
    pkill -o swaybg
fi
