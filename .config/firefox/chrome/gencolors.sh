#!/bin/sh

# Generates colors for the startpage
#  from the Xresources settings

background=$(xresq background Firefox)
altbackground=$(xresq altbackground Firefox)
foreground=$(xresq foreground Firefox)

path=$(dirname $(realpath "$0"))

# Be careful with indentation
sed -i "s/^  --background: .*$/  --background: $background;/;
        s/^  --foreground: .*$/  --foreground: $foreground;/g" "$path"/userChrome.css 

