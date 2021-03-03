" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/pluged')

" Change dates fast
" Plug 'tpope/vim-speeddating'
" Convert binary, hex, etc..
" Plug 'glts/vim-radical'
" Repeat stuff
" Plug 'tpope/vim-repeat'
" Text Navigation
" Plug 'unblevable/quick-scope'
" Useful for React Commenting 
" Plug 'suy/vim-context-commentstring'




if exists('g:vscode')
  Plug 'ChristianChiarulli/vscode-easymotion'
  Plug 'machakann/vim-highlightedyank'
else
  """"""""""""""""""""""""""""""
  """"""""""Interface"""""""""""
  """"""""""""""""""""""""""""""

  " Colorizer
  Plug 'norcalli/nvim-colorizer.lua'

  """"""""NVim-treesitter"""""""
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'nvim-treesitter/playground'
  "Plug 'kyazdani42/nvim-tree.lua'

  """"""""""Colorscheme""""""""""
  Plug 'christianchiarulli/nvcode-color-schemes.vim'
  
  """""""""""Devicons""""""""""""
  Plug 'ryanoasis/vim-devicons'
  Plug 'kyazdani42/nvim-web-devicons'

  """"""""""LightLine""""""""""""
  Plug 'itchyny/lightline.vim'                    "lightline vim
  Plug 'mengelbrecht/lightline-bufferline'
  "Plug 'niklaas/lightline-gitdiff'
  "Plug 'maximbaz/lightline-ale'
  
  Plug 'glepnir/galaxyline.nvim'                                          """"""
  " Better tabline
  Plug 'romgrk/barbar.nvim'

  """""""""""Indentline""""""""""
  Plug 'yggdroot/indentline'                      "indent for vim
  "Plug 'tpope/vim-sleuth'
  
  """"""""""Polyglot"""""""""""""
  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'

  """"""""""CursorWord""""""""""
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  
  " Find and replace
  Plug 'ChristianChiarulli/far.vim'

  """""""""""CurrentWord"""""""""
  "Plug 'dominikduda/vim_current_word'             "highlight current word 
  "no need beacause using coc nvim
  
  
  """""""""""""""""""""""""""""""
  """"""""""Completion"""""""""""
  """""""""""""""""""""""""""""""
  
  " async tasks
  Plug 'skywind3000/asynctasks.vim'
  Plug 'skywind3000/asyncrun.vim'

  """"""""""""CocNvim""""""""""""
  Plug 'neoclide/coc.nvim', { 'branch': 'release'}
  
  """"""""""""""C#""""""""""""""
  Plug 'OmniSharp/omnisharp-vim'
  
  """"""""""Snippets"""""""""""""
  Plug 'honza/vim-snippets'                       "for basic snippets
  Plug 'SirVer/ultisnips'
  
  Plug 'digitaltoad/vim-jade'                     "for pug
  
  Plug 'valloric/matchtagalways'                  "for html
  Plug 'mattn/emmet-vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'
  " Auto change html tags
  Plug 'AndrewRadev/tagalong.vim'

  Plug 'jvanja/vim-bootstrap4-snippets'           "for bootstrap4
  
  Plug 'pangloss/vim-javascript'                  "for js
  Plug 'jelera/vim-javascript-syntax'
  Plug 'maksimr/vim-jsbeautify'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'leafgarland/typescript-vim'
  Plug 'othree/javascript-libraries-syntax.vim'
  
  "Plug 'ianks/vim-tsx'                            "reactnative
  
  Plug 'leafgarland/typescript-vim'              "typescript
  Plug 'herringtondarkholme/yats.vim'
  
  
  """""""""""""""""""""""""""""""
  """""""""Intergration""""""""""
  """""""""""""""""""""""""""""""
  
  """""""""""FZF&CtrlP"""""""""""                  "search file and better display
  Plug 'junegunn/fzf', { 'do': { -> fzf#install()}}
  Plug 'junegunn/fzf.vim'
  Plug 'voldikss/fzf-floaterm'
  Plug 'coreyja/fzf.devicon.vim'
  Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }
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
  Plug 'liuchengxu/vista.vim'

  """""""""""Comment"""""""""""""
  Plug 'tpope/vim-commentary'
  
  """""""""""""""Git"""""""""""""
  Plug 'tpope/vim-fugitive'
  Plug 'kdheepak/lazygit.nvim'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'
  Plug 'rhysd/git-messenger.vim'
  "Plug 'APZelos/blamer.nvim'
  "Plug 'mhinz/vim-signify'
  
  """"""""""VimSurround""""""""""
  Plug 'tpope/vim-surround'
  
  """"""""""""Startify"""""""""""
  Plug 'mhinz/vim-startify'
  
  """"""""""""Rainbow""""""""""""
  "Plug 'luochen1990/rainbow'
  
  " Interactive code 
  Plug 'metakirby5/codi.vim'

  " Intuitive buffer closing
  Plug 'moll/vim-bbye'
endif

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
