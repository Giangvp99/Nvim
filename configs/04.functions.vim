if exists('g:loaded_termtoggle_plugin') || v:version < 800
	finish
endif
let g:loaded_termtoggle_plugin = 1

function s:ToggleTerminal()
	"if a terminal is open hide it
	if win_gotoid(get(s:, 'terminal_id', 0))
		hide
	else
		call s:OpenTerminal()
	endif
endfunction

function s:OpenTerminal()
	bot new term
	exec 'resize' . get(g:, 'termtoggle_terminal_size', 12)
	if !bufexists(get(s:, 'terminal_buffer', -1))
		call s:CreateTerminal()
	else
		exec 'buffer ' . s:terminal_buffer
	endif
	startinsert

	let s:terminal_buffer = bufnr('')
	let s:terminal_id = win_getid()
endfunction

function s:CreateTerminal()
	call termopen(get(g:, 'termtoggle_shell', $SHELL))
	
	set nonumber
endfunction

"command! TermToggle call s:ToggleTerminal()
"nnoremap <A-t> :TermToggle <CR>
"inoremap <A-t> <ESC> :TermToggle <CR>
"tnoremap <A-t> <C-\><C-n>:TermToggle <CR>


