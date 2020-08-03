call plug#begin('~/.config/nvim/pluged')

Plug 'scrooloose/nerdtree'

Plug 'morhetz/gruvbox'
Plug 'crusoexia/vim-monokai'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'majutsushi/tagbar'

Plug 'scrooloose/syntastic'

Plug 'OmniSharp/omnisharp-vim'

Plug 'ryanoasis/vim-devicons'

Plug 'junegunn/fzf', { 'do': { -> fzf#install()}}
Plug 'junegunn/fzf.vim'

Plug 'w0rp/ale'

Plug 'prettier/vim-prettier'

Plug 'terryma/vim-multiple-cursors'

Plug 'tpope/vim-surround'

Plug 'honza/vim-snippets'

Plug 'valloric/matchtagalways'
Plug 'mattn/emmet-vim'

Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

call plug#end()
