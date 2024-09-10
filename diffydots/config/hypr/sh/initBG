#!/bin/bash

LAST_WALLPAPER_FILE=~/.last_wallpaper

# Check if the last wallpaper file exists and is not empty
if [ -s "$LAST_WALLPAPER_FILE" ]; then
    # Read the last wallpaper path and apply it
    WALLPAPER=$(cat "$LAST_WALLPAPER_FILE")
    wal -i "$WALLPAPER"
    swaybg -i "$WALLPAPER" &
else
    echo "No ref file found, check paths."
fi
