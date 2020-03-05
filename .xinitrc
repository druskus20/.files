# xinitrc (sourced by /etc/lightdm/XSession

# Start some programs
picom -b
#conky --pause=5 -q
xautolock -time 10 -locker "betterlockscreen --lock blur" &
set-bg /home/druskus/img/bg/fish.jpg
$HOME/.config/polybar/launch.sh

# Disable pc speaker
xset -b

# Speed up keyboard input
xset r rate 300 50 &	

# Finally load keybinding 
# (so we make sure that they are loaded at the same time as bspwm)
sxhkd &
