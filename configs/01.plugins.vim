call plug#begin('~/.config/nvim/pluged')

Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'majutsushi/tagbar'
Plug 'OmniSharp/omnisharp-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'chiel92/vim-autoformat'
Plug 'terryma/vim-multiple-cursors'
Plug 'luochen1990/rainbow'
Plug 'prettier/vim-prettier'
Plug 'tpope/vim-surround'

call plug#end()
