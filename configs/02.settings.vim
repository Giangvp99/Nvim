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



"if has("autocmd")
"au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
"au InsertEnter,InsertChange *
"			\ if v:insertmode == 'i' |
"			\   silent execute '!echo -ne "\e[5 q"' | redraw! |
"			\ elseif v:insertmode == 'r' |
"			\   silent execute '!echo -ne "\e[3 q"' | redraw! |
"			\ endif
"au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
"endif
"let &t_SI = "\<esc>[5 q"
"let &t_SR = "\<esc>[3 q"
"let &t_EI = "\<esc>[2 q"
"let &t_SI="\eP\e[5 q\e\\"
"let &t_EI="\eP\e[1 q\e\\"
"let &t_SR="\eP\e[3 q\e\\"
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
else
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[2 q"
endif
":autocmd InsertEnter * set cul
":autocmd InsertLeave * set nocul
"



noremap > <C-w>>
noremap < <C-w><
