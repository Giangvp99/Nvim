"""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""Theme"""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""
 syntax enable
" set termguicolors
" colorscheme onedark
" set background=dark
highlight Normal guibg=None ctermbg=None
set t_Co=256
let g:miramare_enable_italic = 1
let g:miramare_disable_italic_comment = 1

hi Comment cterm=italic
let g:nvcode_termcolors=256

" colorscheme nord
colorscheme nvcode
" colorscheme onedark
" colorscheme TSnazzy
" colorscheme aurora


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
