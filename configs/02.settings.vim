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
set textwidth=80
set colorcolumn=80

"Indention Options
set smartindent
set softtabstop=2
set tabstop=2
set shiftwidth=2
set autoindent
set expandtab
set cursorline
"set listchars=tab:\¦\ 
"set list

set nobackup
set noswapfile
set history=999
set nowrap
set encoding=UTF-8

"Shortcut keys
inoremap jj <ESC>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP> 
inoremap <Right> <NOP>

inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l

tnoremap <ESC> <C-\><C-n>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l


nnoremap <Right> <C-w><
nnoremap <Left> <C-w>>
nnoremap <Up> <C-w>-
nnoremap <Down> <C-w>+

