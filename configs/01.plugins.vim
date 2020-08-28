call plug#begin('~/.config/nvim/pluged')

Plug 'scrooloose/nerdtree'                            "a file system explorer for the Vim editor
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'morhetz/gruvbox'                                "themes for vim
Plug 'crusoexia/vim-monokai'

Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'niklaas/lightline-gitdiff'
Plug 'yggdroot/indentline'
Plug 'maximbaz/lightline-ale'

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
Plug 'epilande/vim-react-snippets'
Plug 'SirVer/ultisnips'
Plug 'jvanja/vim-bootstrap4-snippets' "for bootstrap4

Plug 'valloric/matchtagalways'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'digitaltoad/vim-jade' "for pug
Plug 'pangloss/vim-javascript' "for js
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'othree/javascript-libraries-syntax.vim'

""""""""""""""""""""""""""""""""for git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

call plug#end()
