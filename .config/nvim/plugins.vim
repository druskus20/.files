
" --- plug.vim ----          
" This is the plugin configuration file
" -----------------    

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

if !1 | finish | endif
if has('vim_starting')
  set nocompatible               " Be iMproved
  call plug#begin()
endif

" Load vim-plug
Plug 'bling/vim-airline'
