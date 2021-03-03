" General Setting
if !exists('g:vscode')
  source $HOME/.config/nvim/configs/plug-config/polyglot.vim
endif
source $HOME/.config/nvim/configs/plugins.vim
source $HOME/.config/nvim/configs/settings.vim
source $HOME/.config/nvim/configs/functions.vim

if exists('g:vscode')
  source $HOME/.config/nvim/vscode/settings.vim
  source $HOME/.config/nvim/configs/plug-config/easymotion.vim
  source $HOME/.config/nvim/configs/plug-config/highlightyank.vim
else 
  " Themes
  source $HOME/.config/nvim/configs/themes/syntax.vim
  source $HOME/.config/nvim/configs/themes/nvcode.vim

  " Plugin Configuration
  source $HOME/.config/nvim/configs/plug-config/coc/coc.vim
  source $HOME/.config/nvim/configs/plug-config/coc/coc-extensions.vim
  source $HOME/.config/nvim/configs/plug-config/key/vim_whick_key.vim
  source $HOME/.config/nvim/configs/plug-config/vim-commentary.vim
  source $HOME/.config/nvim/configs/plug-config/ranger.vim
  source $HOME/.config/nvim/configs/plug-config/fzf.vim
  source $HOME/.config/nvim/configs/plug-config/codi.vim
  source $HOME/.config/nvim/configs/plug-config/easymotion.vim
  source $HOME/.config/nvim/configs/plug-config/startify.vim
  source $HOME/.config/nvim/configs/plug-config/closetags.vim
  source $HOME/.config/nvim/configs/plug-config/floaterm.vim
  source $HOME/.config/nvim/configs/plug-config/barbar.vim
  source $HOME/.config/nvim/configs/plug-config/far.vim
  source $HOME/.config/nvim/configs/plug-config/tagalong.vim
  source $HOME/.config/nvim/configs/plug-config/asynctask.vim
  "source $HOME/.config/nvim/configs/plug-config/nvim_tree.vim
  "source $HOME/.config/nvim/configs/plug-config/lightline.vim
  luafile $HOME/.config/nvim/configs/plug-config/lua/plugins/plug-colorizer.lua
  luafile $HOME/.config/nvim/configs/plug-config/lua/plugins/nvcodeline.lua
  luafile $HOME/.config/nvim/configs/plug-config/lua/plugins/treesitter.lua
endif

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/configs/paths.vim
endif
