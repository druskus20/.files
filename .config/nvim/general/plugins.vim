
" --- plug.vim ----          
" This is the plugin configuration file
" -----------------    

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()

Plug 'preservim/nerdtree'                           " File tree
Plug 'vim-airline/vim-airline'                      " Status line at the bottom
Plug 'vim-airline/vim-airline-themes'               " Airline themes
Plug 'joshdick/onedark.vim'                         " Color scheme
Plug 'drewtempelmeyer/palenight.vim'                " Color scheme
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " Completion
Plug 'dpelle/vim-LanguageTool'
Plug 'psliwka/vim-smoothie'
" Plug 'valloric/youcompleteme'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'ryanoasis/vim-devicons'
" Plug 'mhinz/vim-startify'
"
call plug#end()
