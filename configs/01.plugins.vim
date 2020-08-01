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

Plug 'prettier/vim-prettier'

Plug 'terryma/vim-multiple-cursors'

Plug 'tpope/vim-surround'

Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'

Plug 'yggdroot/indentline'

Plug 'valloric/matchtagalways'
Plug 'mattn/emmet-vim'
Plug 'plasticboy/vim-markdown'

Plug 'thiagoalessio/rainbow_levels.vim'
call plug#end()
