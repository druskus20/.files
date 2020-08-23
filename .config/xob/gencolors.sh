#!/bin/sh

# A script for generating a new xob config file 
#  using the xresources setting

foreground=$(xresq foreground Xob)
background=$(xresq background Xob)
color1=$(xresq color1 Xob)
color2=$(xresq color2 Xob)
color5=$(xresq color5 Xob)

path=$(dirname $(realpath "$0"))

cat <<EOF > "$path"/styles.cfg
default = {
        x         = {relative = 1; offset = -48;};
        y         = {relative = 0.5; offset = 0;};
        length    = {relative = 0.3; offset = 0;};
        thickness = 24;
        outline   = 3;
        border    = 4;
        padding   = 3;
        orientation = "vertical";
        
        overflow = "proportional";
        
        color = {
            normal = {
                fg     = "$foreground";
                bg     = "$background";
                border = "$foreground";
            };
            alt = {
                fg     = "$color2";
                bg     = "$background";
                border = "$color2";
            };
            overflow = {
                fg     = "$foreground";
                bg     = "$background";
                border = "$color1";
            };
            altoverflow = {
                fg     = "$foreground";
                bg     = "$background";
                border = "$color5";
            };
        };
}
