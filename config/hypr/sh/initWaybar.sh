#!/bin/bash

CONFIG_FILES="$HOME/.config/waybar/config.json $HOME/.config/waybar/style.css $HOME/.config/waybar/colors-waybar.css"

trap "killall waybar" EXIT

while true; do
    waybar -c .config/waybar/config.json -s .config/waybar/style.css &
    inotifywait -e create,modify $CONFIG_FILES
    killall waybar
done
