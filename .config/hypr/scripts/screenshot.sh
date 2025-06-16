#!/bin/bash

screenshot_filename="$HOME/Pictures/Screenshots/$(date +"%d-%m-%Y-%H%S")-Full.png"

grim -t png $screenshot_filename

if [ -e $screenshot_filename ]; then
  notify-send -i - "Grim" "Selection Screenshot Saved \n $screenshot_filename"
fi
