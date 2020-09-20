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
