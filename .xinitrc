# xinitrc (sourced by /etc/lightdm/XSession

# Fix dual boot time issue
sudo timedatectl set-ntp true

# Start some programs
picom -b > /dev/null 2> /dev/null &
#conky --pause=5 -q
setbg /home/druskus/img/bg/fish.jpg &
# cat .cache/background | xargs betterlockscreen -u &  
xautolock -time 10 -locker "betterlockscreen --lock blur" &
$HOME/.config/polybar/launch.sh > /dev/null 2> /dev/null 

# Disable pc speaker
xset -b

# Finally load keybinding 
# (so we make sure that they are loaded at the same time as bspwm)
sxhkd & 

# Speed up keyboard input
xset r rate 300 50 &	

setxkbmap -option caps:escape

