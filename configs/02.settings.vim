let mapleader = "\<Space>"
filetype plugin on
filetype plugin indent on
syntax on


"Search Options
set incsearch
set hlsearch

"User Interface Options
set number
set relativenumber
set cmdheight=2
set mouse=a

"Indention Options
set tabstop=4
set shiftwidth=4
set autoindent

set nobackup
set noswapfile
set history=999
set nowrap
set encoding=UTF-8


"Shortcut keys
inoremap jj <ESC>
tnoremap <ESC> <C-\><C-n>



noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>



tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l



noremap > <C-w>>
noremap < <C-w><

