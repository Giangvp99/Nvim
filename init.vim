if exists('g:vscode')
  source $HOME/.config/nvim/vscode/settings.vim
else
  for f in split(glob('~/.config/nvim/configs/*.vim'), '\n')
	  exe 'source' f
  endfor
endif
