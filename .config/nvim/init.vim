" --- init.vim ----      
" This is the root file  
" -----------------

" Set data directories
set undodir=$XDG_DATA_HOME/nvim/undo
set directory=$XDG_DATA_HOME/nvim/swap
set backupdir=$XDG_DATA_HOME/nvim/backup

" Set custom .viminfo path
set viminfo='10,<100,:100,%,n$XDG_CACHE_HOME/nvim/.viminfo

" Set runtime directory
set runtimepath=$XDG_CONFIG_HOME/nvim,$VIMRUNTIME,$XDG_CONFIG_HOME/nvim/after

" Source vim modular config files
source $XDG_CONFIG_HOME/nvim/plugins.vim
source $XDG_CONFIG_HOME/nvim/general.vim
source $XDG_CONFIG_HOME/nvim/keys.vim
source $XDG_CONFIG_HOME/nvim/line.vim


