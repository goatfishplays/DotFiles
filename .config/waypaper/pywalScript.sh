#!/bin/bash

#wal --cols16 -i $1 -n # update colors for pywal 
wpg -A $1 # Generate 16 colors
wpg -ns $1 # update colors for gtk and pywal
if hyprctl clients | grep -q "class: Spotify"; then
    mv ~/.cache/wal/colors-spicetify-StarryNight.ini ~/.config/spicetify/Themes/StarryNight/color.ini # move generated colors to correct location
    spicetify apply # reload spotify
fi
pywalfox update # update colors for firefox extension
