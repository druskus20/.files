# linux-dotfiles
A repository to sync and back up my linux config files (or "dotfiles")



## System
My main machine is a desktop pc running Manjaro i3. I've stripped most of the default packages and features and modified system files and scripts. There is a high chance that my dotfiles wont work out of the box so you'll have to figure out yourself.

## Files
- .Xresources:		The basic config file for the X11 server, most programs can or must (urxvt) source settings from it.
- .profile:   		Runs on system login so its nice to set some variables or start programs (although I use xprofile for that last).
- .xprofile:  		Similar to profile but for the X server only. I use it as a replacement for .xinitrc thanks to my /etc/lightdm/Xsession xinit wrapper.
- img/bg:     		This directory contains my background images.

- .local/bin: 		This is the directory that contains my custom scripts mostly for POSIX sh
- .local/bin/dot:	A basic script for backing up my dotfiles using a bare git repository

- .config: 		Contains config files for most of my programs. 
- .config/i3/		The config file for my previous window manager, i3. (Moved to bspwm)
- .congig/polybar/ 	The config file (and launch script) for my info bar
- .config/sxhkd/	The shortcuts I use for bspwm aswell as opening different programs
- .config/xres/themes/	Different color schemes sourced by .Xresources.
- .config/zsh/		The files sourced by zsh, my shell, aswell as my personal themes
- .confiz/aliasrc 	Contains all my alias, sourced by zshrc 

## To do


## Compatibility

