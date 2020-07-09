" --- general.vim ----    
" This file contains general settings
" --------------------

set clipboard=unnamedplus    

set relativenumber                    
set number                

syntax enable

" Tab size
set tabstop=4
set softtabstop=4
set expandtab       " Tabs are spaces

"set cursorline
set wildmenu
"set lazyredraw      " Redraw only if needed

set showmatch       " Highlight [{()}]

set nocompatible    " Be iMproved

set hlsearch
set incsearch    


autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
colorscheme palenight
highlight LineNr guibg=NONE gui=NONE
