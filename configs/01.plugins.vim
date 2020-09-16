call plug#begin('~/.config/nvim/pluged')

Plug 'morhetz/gruvbox'                                "themes for vim
Plug 'crusoexia/vim-monokai'
Plug 'ryanoasis/vim-devicons'

Plug 'itchyny/lightline.vim'                          "lightline vim
Plug 'mengelbrecht/lightline-bufferline'
Plug 'niklaas/lightline-gitdiff'
Plug 'maximbaz/lightline-ale'

Plug 'yggdroot/indentline'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'majutsushi/tagbar'

Plug 'OmniSharp/omnisharp-vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'voldikss/fzf-floaterm'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'w0rp/ale'
Plug 'scrooloose/syntastic'

"Plug 'prettier/vim-prettier'

Plug 'terryma/vim-multiple-cursors'
Plug 'dominikduda/vim_current_word'

Plug 'tpope/vim-surround'

Plug 'honza/vim-snippets'             "for snippets
Plug 'epilande/vim-react-snippets'
Plug 'SirVer/ultisnips'

Plug 'jvanja/vim-bootstrap4-snippets' "for bootstrap4

Plug 'valloric/matchtagalways'        "for html
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'

Plug 'digitaltoad/vim-jade' "for pug

Plug 'pangloss/vim-javascript' "for js
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'othree/javascript-libraries-syntax.vim'

Plug 'ianks/vim-tsx' "reactnative
Plug 'leafgarland/typescript-vim'

""""""""""""""""""""""""""""""""for git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'APZelos/blamer.nvim'
Plug 'kdheepak/lazygit.nvim'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'liuchengxu/vim-which-key' "which-key

Plug 'kevinhwang91/rnvimr'          "for ranger
Plug 'vifm/vifm.vim'

Plug 'voldikss/vim-floaterm'

Plug 'tpope/vim-commentary'

call plug#end()
