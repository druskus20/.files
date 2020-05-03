" --- keys.vim ---
" This file contains custom keybindings
" ----------------

" Remap CapsLock to Esc
inoremap <C-s> <esc>:w<cr>a
nnoremap <C-s> :w<cr>a

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Disable q: (because I usually press it on accident)
noremap q: <Nop>
noremap t: q:

" turn off search highlight (ctrl space)
nnoremap <leader><space> :nohlsearch<CR>

" move vertically by visual line
"nnoremap j gj
"nnoremap k gk

