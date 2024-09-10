#!/bin/bash

# Directory containing the wallpapers
WALLPAPER_DIR=~/Desktop/Pictures/Wallpapers
LAST_WALLPAPER_FILE="$HOME/.last_wallpaper"

cd "$WALLPAPER_DIR" || exit

echo "Select a wallpaper:"
select file in *; do
    if [ -n "$file" ]; then
        # Save the selected wallpaper path
        echo "$PWD/$file" > "$LAST_WALLPAPER_FILE"

        # Apply the wallpaper and color scheme
        wal -i "$PWD/$file"
        swaybg -i "$PWD/$file" &
        cp -f $HOME/.cache/wal/colors-waybar.css $HOME/.config/waybar &
        break
    else
        echo "Invalid."
    fi
done
