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



