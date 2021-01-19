""""""""""""""""""""""""""""""""""""""
""""""""""""""""Ale'""""""""""""""""""
""""""""""""""""""""""""""""""""""""""
let g:ale_fix_on_save = 1
let b:ale_fixers = ['prettier', 'eslint']


"let b:ale_linters = ['flow-language-server']
let g:ale_linters = {
\   'javascript': ['eslint','flow-language-server'],
\}

let g:ale_completion_autoimport = 1

let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

let g:ale_disable_lsp = 1

highlight clear ALEErrorSign
highlight clear ALEWarningSign

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_list_window_size = 5
