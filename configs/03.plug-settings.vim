""""""""""""""""""""""""""""""""""""""""
""""""""""""""NERDTree""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""
map <C-b> :NERDTreeToggle<CR>                               
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
nmap <C-r> :NERDTreeFocus<cr>R<C-w><C-p>

"""""""""""""NERDTree-git"""""""""""""""
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

"""""Vim-syntax-nerdtree-highlight""""""
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1



""""""""""""""""""""""""""""""""""""""""
""""""""""""""""Theme"""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""
syntax enable
set background=dark
highlight Normal ctermbg=None
colorscheme gruvbox
set termguicolors
set t_Co=256
""""""""semanticTermColors""""""""""
let g:semanticTermColors = [28,1,2,3,4,5,6,7,25,9,10,34,12,13,14,15,16,125,124,19]

"""""""""""""""""""""""""""""""""""""""
""""""""""""lightline""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""
set showtabline=2
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ],
      \   'left': [ [ 'mode', 'paste' ], 
      \             [ 'readonly', 'filename', 'modified' ] ]
      \ },
		  \ 'tabline': {
      \		'left': [ [ 'buffers' ] ],
			\		'right': [ [ 'gitbranch', 'gitdiff' ], 
      \              [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ] ]
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
      \   'lineinfo':'LightlineInfo'
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

function! LightLineInfo()
  return LightlineVisible() ? '%3l:%-2v' : ''
endfunction



function! LightLineMode()
  return winwidth(0) > 30 ? lightline#mode() : 'Explorer'
endfunction


function! LightLineFilename()
	return winwidth(0) > 30 ? expand('%:h'): ''
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFilecoding()
  return winwidth(0) > 70 ? &fileencoding : ''
endfunction

function! LightlineReadOnly()
  return winwidth(0) <30 ? (&readonly? '':'' ):''
endfunction

function! LightlineModified()
  return winwidth(0) <30 ? (&modified? '✎':'' ):''
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



"""""""""""""""""""""""""""""""""""""""
""""""""""""""Prettier"""""""""""""""""
"""""""""""""""""""""""""""""""""""""""
let g:prettier#config#tab_width = 2




"""""""""""""""""""""""""""""""""""""""
""""""""""Syntastic""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



"""""""""""""""""""""""""""""""""""""""
"""""""""""""Tagbar""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>



"""""""""""""""""""""""""""""""""""""""
"""""""""""""""Coc.nvim""""""""""""""""
"""""""""""""""""""""""""""""""""""""""
let g:coc_global_extensions = [
			\ 'coc-snippets',
			\ 'coc-tsserver',
			\ 'coc-eslint',
			\ 'coc-prettier',
			\ 'coc-json',
			\ 'coc-css',
			\ 'coc-html',
      \ 'coc-explorer'
			\]


command! -nargs=0 Prettier :CocCommand prettier.formatFile

set hidden
set updatetime=300
set signcolumn=yes
set shortmess+=c

inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col-1] =~# '\s'
endfunction

"use <c-space> for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <NUL> coc#refresh()

"use <tab> and <s-tab> to navigate the completion list
inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"use <cr> to confim completion
if has('patch8.1.1068')
	inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
	inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
inoremap <expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<C-r>=coc#on_enter()\<CR>"

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<C-j>'
let g:coc_snippet_prev = '<C-k>'
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

command! -nargs=0 Format :call CocAction('format')






"""""""""""Coc-Explorer""""""""""""""""
"""""""""""""""""""""""""""""""""""""""














"""""""""""""""""""""""""""""""""""""""
"""""""""""""OmniSharp"""""""""""""""""

let g:OmniSharp_server_stdio = 1



"""""""""""""""""""""""""""""""""""""""
""""""""""""""""""FZF""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""
nnoremap <C-f> :Files<CR>
let g:fzf_action = {
			\ 'ctrl-t': 'tab split',
			\ 'ctrl-s': 'split',
			\ 'ctrl-v': 'vsplit'
			\ }

"""""""""""""""""""""""""""""""""""""""
"""""""""""""""""CtrlP"""""""""""""""""
"""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|dist\|vendor\|log$\|tmp\|javadoc\|bundle\|plugged$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_depth=40
let g:ctrlp_max_files = 1000



"""""""""""""""""""""""""""""""""""""""
"""""""""""""""""Ale'""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""
let b:ale_fixers = ['prettier', 'eslint']
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_fixers = {
			\ '*' :['remove_trailing_lines', 'trim_whitespace'],
			\ 'javascript':['eslint'],
			\ }
let g:ale_fix_on_save = 1
let g:ale_fixers = {
			\ 'html': ['prettier'],
			\ 'css': ['stylelint'],
			\}
let g:ale_linters = {
			\ 'html': ['htmlhint'],
			\ 'css': ['stylelint'],
			\ 'javascript': ['eslint'],
			\}
let g:ale_linters_explicit = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
highlight clear ALEErrorSign
highlight clear ALEWarningSign




"""""""""""""""""""""""""""""""""""""""
"""""""""""""""emmet"""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""
let g:user_emmet_leader_key=','



""""""""""""""""""""""""""""""""""""""""
"""""""""""""""Signify""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""
" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_change            = '~'
let g:signify_sign_delete_first_line = '‾'

let g:signify_vcs_list               = [ 'git' ]
let g:signify_cursorhold_insert      = 0
let g:signify_cursorhold_normal      = 0
let g:signify_update_on_bufenter     = 0
let g:signify_update_on_focusgained  = 0
let g:signify_sign_show_count        = 0
let g:signify_sign_show_text = 1
" Jump though hunks
nmap ,gj <plug>(signify-next-hunk)
nmap ,gk <plug>(signify-prev-hunk)




""""""""""""""""""""""""""""""""""""""""
"""""""""""""Javascript"""""""""""""""""
""""""""""""""""""""""""""""""""""""""""
let g:javascript_plugin_jsdoc = 1



""""""""""""""""""""""""""""""""""""""""
"""""""""""""""Ultisnipts"""""""""""""""
""""""""""""""""""""""""""""""""""""""""

let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
let g:UltiSnipsExpandTrigger="<c-space>"



""""""""""""""""""""""""""""""""""""""""
"""""""""""""""indentline"""""""""""""""
""""""""""""""""""""""""""""""""""""""""
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_faster = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']



""""""""""""""""""""""""""""""""""""""""
"""""""""Javascript-Libraries"""""""""""
""""""""""""""""""""""""""""""""""""""""
let g:used_javascript_libs = 'React'


""""""""""""""""""""""""""""""""""""""""
"""""""""Vim-current-word"""""""""""""""
""""""""""""""""""""""""""""""""""""""""
hi CurrentWord ctermbg=52


""""""""""""""""""""""""""""""""""""""""
"""""""""""Vim-whick-key""""""""""""""""
""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler


""""""""""""""""""""""""""""""""""""""""
"""""""""""Vim-whick-key""""""""""""""""
""""""""""""""""""""""""""""""""""""""""
" Make Ranger replace Netrw and be the file explorer
let g:rnvimr_enable_ex = 1

" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1

" Disable a border for floating window
let g:rnvimr_draw_border = 1

" Change the border's color
let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}

" Make Neovim wipe the buffers corresponding to the files deleted by Ranger
let g:rnvimr_enable_bw = 1

" Set up only two columns in miller mode and draw border with both
let g:rnvimr_ranger_cmd = 'ranger --cmd="set column_ratios 1,1"
            \ --cmd="set draw_borders both"'

" Link CursorLine into RnvimrNormal highlight in the Floating window
highlight link RnvimrNormal CursorLine

nnoremap <silent> <M-o> :RnvimrToggle<CR>
tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>

" Resize floating window by all preset layouts
"tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>

" Resize floating window by special preset layouts
"tnoremap <silent> <M-l> <C-\><C-n>:RnvimrResize 1,8,9,11,5<CR>

" Resize floating window by single preset layout
"tnoremap <silent> <M-y> <C-\><C-n>:RnvimrResize 6<CR>

" Map Rnvimr action
let g:rnvimr_action = {
            \ '<C-t>': 'NvimEdit tabedit',
            \ '<C-x>': 'NvimEdit split',
            \ '<C-v>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }

" Customize the initial layout
let g:rnvimr_layout = { 'relative': 'editor',
            \ 'width': float2nr(round(0.6 * &columns)),
            \ 'height': float2nr(round(0.6 * &lines)),
            \ 'col': float2nr(round(0.2 * &columns)),
            \ 'row': float2nr(round(0.2 * &lines)),
            \ 'style': 'minimal' }

" Customize multiple preset layouts
" '{}' represents the initial layout
let g:rnvimr_presets = [
            \ {},
            \ {'width': 0.700, 'height': 0.700},
            \ {'width': 0.800, 'height': 0.800},
            \ {'width': 0.950, 'height': 0.950},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5},
            \ {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}]

" Only use initial preset layout
" let g:rnvimr_presets = [{}]
