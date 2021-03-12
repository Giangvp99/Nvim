"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


" General Settings
if !exists('g:vscode')
  source $HOME/.config/nvim/configs/plug-config/polyglot.vim
endif
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/configs/general/settings.vim
source $HOME/.config/nvim/configs/general/functions.vim
source $HOME/.config/nvim/configs/keys/mappings.vim

if exists('g:vscode')
  " VS Code extension
  source $HOME/.config/nvim/vscode/settings.vim
  source $HOME/.config/nvim/configs/plug-config/easymotion.vim
  source $HOME/.config/nvim/configs/plug-config/highlightyank.vim
else

  " Themes
  source $HOME/.config/nvim/configs/themes/syntax.vim
  source $HOME/.config/nvim/configs/themes/nvcode.vim

  " Plugin Configuration
  source $HOME/.config/nvim/configs/keys/which-key.vim
  source $HOME/.config/nvim/configs/plug-config/vim-commentary.vim
  source $HOME/.config/nvim/configs/plug-config/rnvimr.vim
  source $HOME/.config/nvim/configs/plug-config/better-whitespace.vim
  source $HOME/.config/nvim/configs/plug-config/fzf.vim
  source $HOME/.config/nvim/configs/plug-config/codi.vim
  "source $HOME/.config/nvim/configs/plug-config/vim-wiki.vim
  source $HOME/.config/nvim/configs/plug-config/coc/coc-extensions.vim
  source $HOME/.config/nvim/configs/plug-config/coc/coc.vim
  source $HOME/.config/nvim/configs/plug-config/easymotion.vim
  source $HOME/.config/nvim/configs/plug-config/goyo.vim
  source $HOME/.config/nvim/configs/plug-config/vim-rooter.vim
  source $HOME/.config/nvim/configs/plug-config/start-screen.vim
  source $HOME/.config/nvim/configs/plug-config/gitgutter.vim
  source $HOME/.config/nvim/configs/plug-config/git-messenger.vim
  source $HOME/.config/nvim/configs/plug-config/closetags.vim
  source $HOME/.config/nvim/configs/plug-config/floaterm.vim
  "source $HOME/.config/nvim/configs/plug-config/barbar.vim
  source $HOME/.config/nvim/configs/plug-config/far.vim
  source $HOME/.config/nvim/configs/plug-config/tagalong.vim
  source $HOME/.config/nvim/configs/plug-config/asynctask.vim
  source $HOME/.config/nvim/configs/plug-config/markdown-preview.vim
  source $HOME/.config/nvim/configs/plug-config/neovide.vim
  source $HOME/.config/nvim/configs/plug-config/vimspector.vim               "for debug
  luafile $HOME/.config/nvim/configs/lua/nvcodeline.lua
  luafile $HOME/.config/nvim/configs/lua/treesitter.lua
  luafile $HOME/.config/nvim/configs/lua/plug-colorizer.lua
  " source $HOME/.config/nvim/plug-config/sneak.vim
  " source $HOME/.config/nvim/plug-config/rainbow.vim
  " source $HOME/.config/nvim/plug-config/illuminate.vim
  " source $HOME/.config/nvim/plug-config/vista.vim
  " source $HOME/.config/nvim/plug-config/xtabline.vim
  " source $HOME/.config/nvim/plug-config/ale.vim
endif
source $HOME/.config/nvim/configs/plug-config/quickscope.vim

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/configs/general/paths.vim
endif

" Better nav for omnicomplete TODO figure out why this is being overridden
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

