let mapleader = "\<Space>"
filetype plugin on
filetype plugin indent on
syntax on

set spell spelllang=en_us
set encoding=UTF-8
set mouse=a

set incsearch
set hlsearch

set number
set relativenumber
set cmdheight=2
set tabstop=4
set softtabstop=0
set shiftwidth=4

set nobackup
set noswapfile
set nowrap

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
