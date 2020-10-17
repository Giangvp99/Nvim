"""""""""""""""""""""""""""""""""""""""
"""""""""""""""""Ale'""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""
let b:ale_fixers = ['prettier', 'eslint']
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_fixers = {
			\ '*' :['remove_trailing_lines', 'trim_whitespace'],
			\ 'javascript':['eslint'],
			\ }

" Enable ESLint only for JavaScript.
let b:ale_linters = ['eslint']

let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1

let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

highlight clear ALEErrorSign
highlight clear ALEWarningSign

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
