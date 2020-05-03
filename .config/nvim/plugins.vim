
" --- plug.vim ----          
" This is the plugin configuration file
" -----------------    

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()
Plug 'bling/vim-airline'
" Plug 'mhinz/vim-startify'
call plug#end()
