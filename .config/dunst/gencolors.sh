#!/bin/sh

# Generates colors for dunst based on 
#  the Xresources file
background=$(xresq background Dunst) foreground=$(xresq foreground Dunst)
frame_color=$(xresq frame_color Dunst)

path=$(dirname $(realpath "$0"))

# Be careful with indentation
sed -i "s/^    background = .*$/    background = \"$background\"/g
        s/^    foreground = .*$/    foreground = \"$foreground\"/g
        s/^    frame_color = .*$/    frame_color = \"$frame_color\"/g" "$path"/dunstrc 

killall -q dunst
dunst & disown
