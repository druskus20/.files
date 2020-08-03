# .profile
# Loads on session start

export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"

# Force XDG base directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# Move some config files
export RXVT_SOCKET="$XDG_RUNTIME_DIR/urxvtd" 
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export LESSKEY="$XDG_CONFIG_HOME/less/lesskey"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export VIMINIT=":source $XDG_CONFIG_HOME/nvim/init.vim"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

## Newer stuff
export IPYTHONDIR="$XDG_CONFIG_HOME"/ipython
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export MONO_CONFIG="$XDG_CONFIG_HOME"/mono/
export XMONAD_CONFIG_HOME="$XDG_CONFIG_HOME"/xmonad
export XMONAD_DATA_HOME="$XDG_DATA_HOME"/xmonad
export XMONAD_CACHE_HOME="$XDG_CACHE_HOME"/xmonad
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export PICOM_CONFIG_PATH="$XDG_CONFIG_HOME"/picom/picom.conf
export STACK_ROOT="$XDG_DATA_HOME"/stack

## Even newer stuff
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc



export SUDO_ASKPASS="$HOME/.local/bin/scripts/dpass"



# ! Remember to specify it in the startx command
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc

# Fails with LightDM
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority



# Utilities
export EDITOR=/usr/bin/nvim
#export BROWSER="$HOME"/.local/bin/scripts/firefox
export TERMINAL="$HOME"/.local/bin/scripts/tdaemon
export PATH="$HOME"/.local/bin:"$HOME"/.local/bin/scripts:"$PATH"



if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
        startx "$XDG_CONFIG_HOME"/X11/xinitrc
fi
