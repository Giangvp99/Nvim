set langmenu=en_US
let $LANG = 'en_US'

let g:mapleader = "\<Space>"

filetype plugin indent on
syntax on

"File options
set autowrite
set confirm

"Search Options
set hlsearch
set incsearch
set ignorecase

"User Interface Options
set number
set relativenumber
set cmdheight=2
set mouse=a
set textwidth=80
set colorcolumn=80

"Indention Options
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
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

"Disable arow key
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP> 
inoremap <Right> <NOP>

"Move in insert mode
inoremap <A-L> <C-o>$
inoremap <A-H> <C-o>0
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l

"Close terminal mode
tnoremap <ESC> <C-\><C-n>
"tnoremap <A-h> <C-\><C-n><C-w>h
"tnoremap <A-j> <C-\><C-n><C-w>j
"tnoremap <A-k> <C-\><C-n><C-w>k
"tnoremap <A-l> <C-\><C-n><C-w>l

"Change window <-> window in vim
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

"Change size window vim
nnoremap <Right> <C-w><
nnoremap <Left> <C-w>>
nnoremap <Up> <C-w>-
nnoremap <Down> <C-w>+

augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>

""done
