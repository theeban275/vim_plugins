call pathogen#incubate()
call pathogen#helptags()
filetype plugin on
filetype indent on
syntax on
set mouse=a
set number
set hlsearch
set pastetoggle=<F2>
set nowrap
set tabstop=4
nnoremap ,/ :nohlsearch<cr>
nnoremap <c-s> :w<cr>
inoremap <c-s> <esc>:w<cr>i
nnoremap <c-w> :wq<cr>
inoremap <c-w> <esc>:wq<cr>
nnoremap <c-q> :q!<cr>
inoremap <c-q> <esc>:q!<cr>
nnoremap <c-z> u
inoremap <c-z> <esc>ui
nnoremap <s-z> <c-r>
inoremap <s-z> <esc><c-r>i
nnoremap <c-t> :NERDTreeTabsToggle<cr>
inoremap <c-t> <esc>:NERDTreeTabsToggle<cr>
