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
colorscheme monokai
set termguicolors
set t_Co=256

"""""""""""""""""""""""""""""""""""""""
""""""""""""lightline""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""
set showtabline=2
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], 
      \             [ 'gitbranch', 'gitdiff', 'readonly', 'filename', 'modified' ], 
		  \							[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ] ], 
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
		  \ 'tabline': {
      \		'left': [ [ 'buffers' ] ],
			\		'right': [ [  ] ]
      \ },
      \ 'separator': {'left': "", 'right': ''},
      \ 'inactive': {
      \   'left': [ [ 'filename', 'gitversion' ] ],
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
			\   'filename': 'LightLineFilename'
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

function! LightLineFilename()
	return expand('%:h')
endfunction

let g:lightline#gitdiff#indicator_added = '+'
let g:lightline#gitdiff#indicator_deleted = '-'
let g:lightline#gitdiff#indicator_modified = '~'
let g:lightline#gitdiff#separator = ' '
let g:lightline#ale#indicator_checking = "\uf110 "
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
			\ 'coc-html'
			\]

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
command! -bang -nargs=* Rg
			\ call fzf#vim#grep(
			\   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
			\   fzf#vim#with_preview(), <bang>0)




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
""""""""""""rainbow""""""""""""""""""""

let g:rainbow_active = 1




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
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)




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
