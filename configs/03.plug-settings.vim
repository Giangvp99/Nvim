for f in split(glob('~/.config/nvim/configs/03-plug-config/*.vim'), '\n')
	  exe 'source' f
endfor
