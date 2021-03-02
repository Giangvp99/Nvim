"Header 3 row
"Plugins after name .....
"comment for plug begin 49 column


call plug#begin('~/.config/nvim/pluged')

""""""""""""""""""""""""""""""
""""""""""Interface"""""""""""
""""""""""""""""""""""""""""""

""""""""""Colorscheme""""""""""
Plug 'drewtempelmeyer/palenight.vim'

"""""""""""Devicons""""""""""""
Plug 'ryanoasis/vim-devicons'

""""""""""LightLine""""""""""""
Plug 'itchyny/lightline.vim'                    "lightline vim
Plug 'mengelbrecht/lightline-bufferline'
Plug 'niklaas/lightline-gitdiff'
Plug 'maximbaz/lightline-ale'

"""""""""""Indentline""""""""""
Plug 'yggdroot/indentline'                      "indent for vim

""""""""""CursorWord""""""""""
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"""""""""""CurrentWord"""""""""
"Plug 'dominikduda/vim_current_word'             "highlight current word 
"no need beacause using coc nvim


"""""""""""""""""""""""""""""""
""""""""""Completion"""""""""""
"""""""""""""""""""""""""""""""

""""""""""""CocNvim""""""""""""
Plug 'neoclide/coc.nvim'

""""""""""""""C#""""""""""""""
Plug 'OmniSharp/omnisharp-vim'

""""""""""Snippets"""""""""""""
Plug 'honza/vim-snippets'                       "for basic snippets
Plug 'SirVer/ultisnips'

Plug 'digitaltoad/vim-jade'                     "for pug

Plug 'valloric/matchtagalways'                  "for html
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'

Plug 'jvanja/vim-bootstrap4-snippets'           "for bootstrap4

Plug 'pangloss/vim-javascript'                  "for js
Plug 'jelera/vim-javascript-syntax'
Plug 'maksimr/vim-jsbeautify'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'othree/javascript-libraries-syntax.vim'

"Plug 'ianks/vim-tsx'                            "reactnative
"Plug 'leafgarland/typescript-vim'




"""""""""""""""""""""""""""""""
"""""""""Intergration""""""""""
"""""""""""""""""""""""""""""""

"""""""""""FZF&CtrlP"""""""""""                  "search file and better display
Plug 'junegunn/fzf', { 'do': { -> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'voldikss/fzf-floaterm'
Plug 'coreyja/fzf.devicon.vim'
"Plug 'ctrlpvim/ctrlp.vim'

""""""""Syntastic/ALE""""""""""                  "display error
Plug 'w0rp/ale'
"Plug 'scrooloose/syntastic'

"""""""""""""""""""""""""""""""
"""""""""""Command"""""""""""""
"""""""""""""""""""""""""""""""


"""""""""""WhichKey""""""""""""
Plug 'liuchengxu/vim-which-key'                 "which-key

"""""""""""Ranger""""""""""""""
Plug 'kevinhwang91/rnvimr'                      "for ranger
"Plug 'vifm/vifm.vim'

"""""""""""Floaterm""""""""""""
Plug 'voldikss/vim-floaterm'

"""""""""""""""""""""""""""""""
"""""""""Code display""""""""""
"""""""""""""""""""""""""""""""


"""""""""""Tagbar""""""""""""""
Plug 'majutsushi/tagbar'

"""""""""""Comment"""""""""""""
Plug 'tpope/vim-commentary'

"""""""""""""""Git"""""""""""""
"Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
"Plug 'APZelos/blamer.nvim'
Plug 'kdheepak/lazygit.nvim'

""""""""""VimSurround""""""""""
Plug 'tpope/vim-surround'

""""""""""""Startify"""""""""""
Plug 'mhinz/vim-startify'

""""""""""""Rainbow""""""""""""
"Plug 'luochen1990/rainbow'


call plug#end()
