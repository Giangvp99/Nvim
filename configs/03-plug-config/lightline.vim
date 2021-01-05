"""""""""""""""""""""""""""""""""""""""
""""""""""""lightline""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""
set showtabline=2
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ],
      \              [ 'tagbar' ] ],
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus','readonly', 'filename', 'modified'] ]
      \ },
		  \ 'tabline': {
      \		'left': [ [ 'buffers' ] ],
			\		'right': [ [ 'gitbranch', 'gitdiff' ],
      \              [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ]]
      \ },
      \ 'separator': {'left': "", 'right': ''},
      \ 'inactive': {
      \   'left': [ [ 'filename', 'gitversion' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'mode':'LightLineMode',
			\   'filename': 'LightLineFilename',
      \   'percent' : 'LightlinePercent',
      \   'fileformat':'LightlineFileformat',
      \   'filetype':'LightlineFiletype',
      \   'fileencoding':'LightlineFilecoding',
      \   'readonly':'LightlineReadOnly',
      \   'modified':'LightlineModified',
      \   'lineinfo':'LightlineInfo',
      \   'tagbar' : 'TagbarCurrentTag',
      \   'cocstatus':'coc#status',
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers',
      \   'gitdiff': 'lightline#gitdiff#get',
      \   'linter_checking': 'lightline#ale#checking',
      \   'linter_infos': 'lightline#ale#infos',
      \   'linter_warnings': 'lightline#ale#warnings',
      \   'linter_errors': 'lightline#ale#errors',
      \   'linter_ok': 'lightline#ale#ok',
			\ },
      \ 'component_type': {
      \   'buffers': 'tabsel',
			\	  'gitdiff': 'middle',
      \   'linter_checking': 'right',
      \   'linter_infos': 'right',
      \   'linter_warnings': 'warning',
      \   'linter_errors': 'error',
      \   'linter_ok': 'right',
			\ },
      \ }
function! TagbarCurrentTag()
  return tagbar#currenttag('%s','')
endfunction

function! LightlineInfo()
  if &ft !=? 'coc-explorer'
    return line('.').':'. col('.')
  else
    return ''
  endif
endfunction

function! LightlinePercent()
  if &ft !=? 'coc-explorer'
    return line('.') * 100 / line('$') . '%'
  else
    return ''
  endif
endfunction

function! LightLineMode()
  if &ft !=? 'coc-explorer'
    return lightline#mode()
  else
    return 'Explorer'
  endif
endfunction

function! LightLineFilename()
	return winwidth(0) > 25 ? expand('%:h'): ''
endfunction

function! LightlineFileformat()
  if &ft !=? 'coc-explorer'
    return &fileformat
  else
    return ''
  endif
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFilecoding()
  return winwidth(0) > 70 ? &fileencoding : ''
endfunction

function! LightlineReadOnly()
  if &ft !=? 'coc-explorer'
    return &readonly? '':''
  else
    return ''
  endif
endfunction

function! LightlineModified()
  if &ft !=? 'coc-explorer'
    return &modified? '✎':''
  else
    return ''
  endif
endfunction

let g:lightline#gitdiff#indicator_added = '+'
let g:lightline#gitdiff#indicator_deleted = '-'
let g:lightline#gitdiff#indicator_modified = '~'
let g:lightline#gitdiff#separator = ' '
let g:lightline#ale#indicator_checking = "checking..."
let g:lightline#ale#indicator_infos = "\uf129 "
let g:lightline#ale#indicator_warnings = "\uf071 "
let g:lightline#ale#indicator_errors = "\uf05e "
let g:lightline#ale#indicator_ok = "\uf00c "
let g:lightline#bufferline#show_number = 1
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#enable_nerdfont = 1
let g:lightline#bufferline#filename_modifier = ':t:r'
let g:lightline#bufferline#modified = '✎'
let g:lightline#bufferline#read_only = ''


let g:lightline_tagbar#format = '%s'

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
