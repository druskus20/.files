set undodir=$XDG_DATA_HOME/vim/undo
set directory=$XDG_DATA_HOME/vim/swap
set backupdir=$XDG_DATA_HOME/vim/backup

set viminfo='10,<100,:100,%,n$XDG_CACHE_HOME/nvim/.viminfo

" set viminfo+='1000,n$XDG_CACHE_HOME/vim/viminfo
" set viminfo+=$XDG_CAHE_HOME/vim/viminfo
set runtimepath=$XDG_CONFIG_HOME/vim,$VIMRUNTIME,$XDG_CONFIG_HOME/vim/after

set clipboard=unnamedplus
inoremap <C-s> <esc>:w<cr>a
nnoremap <C-s> :w<cr>a

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

noremap q: <Nop>
noremap t: q:

set relativenumber
set number
set incsearch


