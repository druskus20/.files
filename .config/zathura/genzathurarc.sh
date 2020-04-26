#!/bin/sh
# A script for generating a new zathurarc file 
#  using the xresources setting

foreground=$(xresq background Zathura)
background=$(xresq foreground Zathura)
color1=$(xresq color1 Zathura)
color2=$(xresq color2 Zathura)
defaultbg=$(xresq defaultbg Zathura)


cat <<EOF
### zathurarc ###

set window-title-home-tilde true
set selection-clipboard clipboard
set recolor "true"

set completion-bg "$background"
set completion-fg "$foreground"
set completion-group-bg "$background"
set completion-group-fg "$color2"
set completion-highlight-bg "$foreground"
set completion-highlight-fg "$background"
set recolor-lightcolor "$background"
set recolor-darkcolor "$foreground"

set default-bg "$defaultbg"

set inputbar-bg "$background"
set inputbar-fg "$foreground"
set notification-bg "$background"
set notification-fg "$foreground"
set notification-error-bg "$color1"
set notification-error-fg "$foreground"
set notification-warning-bg "$color1"
set notification-warning-fg "$foreground"
set statusbar-bg "$background"
set statusbar-fg "$foreground"
set index-bg "$background"
set index-fg "$foreground"
set index-active-bg "$foreground"
set index-active-fg "$background"
set render-loading-bg "$background"
set render-loading-fg "$foreground"
EOF
