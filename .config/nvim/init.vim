" --- init.vim ----      
" This is the root file  
" -----------------

" Set data directories
set undodir=$XDG_DATA_HOME/nvim/undo
set directory=$XDG_DATA_HOME/nvim/swap
set backupdir=$XDG_DATA_HOME/nvim/backup


set t_Co=256
set background=dark
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
" Set custom .viminfo path
set viminfo='10,<100,:100,%,n$XDG_CACHE_HOME/nvim/.viminfo

" Set runtime directory. Related to the zsh syntax hightlighting fix
set runtimepath=$XDG_CONFIG_HOME/nvim,$VIMRUNTIME,$XDG_CONFIG_HOME/nvim/after

" Source vim modular config files
source $XDG_CONFIG_HOME/nvim/general/plugins.vim
source $XDG_CONFIG_HOME/nvim/general/settings.vim
source $XDG_CONFIG_HOME/nvim/general/keys.vim

" Source plugin configs
source $XDG_CONFIG_HOME/nvim/plugins/onedark.vim
source $XDG_CONFIG_HOME/nvim/plugins/airline.vim

source $XDG_CONFIG_HOME/nvim/plugins/coc.vim



