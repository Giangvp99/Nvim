""""""""""""""""""""""""""""""""""""""""
"""""""""""Vim-whick-key""""""""""""""""
""""""""""""""""""""""""""""""""""""""""
call which_key#register('<Space>', "g:which_key_map")

"nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>

set timeoutlen=500

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" Create map to add keys to
let g:which_key_map = {}

" Define a separator
let g:which_key_sep = '->'

" Coc Search & refactor
"nnoremap <leader>? :CocSearch <C-R>=expand("<cword>")<CR><CR>
"let g:which_key_map['?'] = 'search word'         false to run

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Single mappings
let g:which_key_map[';'] = [ ':Commands'                          , 'commands' ]
let g:which_key_map['e'] = [ ':CocCommand explorer'               , 'explorer' ]
let g:which_key_map['f'] = [ ':Files'                             , 'search files' ]
let g:which_key_map['r'] = [ ':RnvimrToggle'                      , 'ranger' ]
let g:which_key_map['g'] = [ ':FloatermNew lazygit'               , 'git']
let g:which_key_map[' '] = [ '<ESC>'                              , 'close' ]
let g:which_key_map['m'] = [ ':TagbarToggle'                      , 'tagbar' ]
let g:which_key_map['n'] = [ ':FloatermNew lazynpm'               , 'npm' ]

" Group mappings

" v is for vim
let g:which_key_map.v = {
      \ 'name' : '+vim' ,
      \ '.' : [':e $MYVIMRC'                   , 'open init.vim'],
      \ }

" w is for windows
let g:which_key_map.w = {
      \ 'name' : '+windows'                    ,
      \ 'h' : ['<C-W>s'                        , 'split below'],
      \ 'v' : ['<C-W>v'                        , 'split right'],
      \ '=' : ['<C-W>='                        , 'balance windows' ],
      \ }
" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer'  ,
      \ '1' : [':b1'        , 'buffer 1'],
      \ '2' : [':b2'        , 'buffer 2'],
      \ 'd' : [':bd'        , 'delete-buffer'],
      \ 'f' : [':bfirst'    , 'first-buffer'],
      \ 'l' : [':blast'     , 'last-buffer'],
      \ 'n' : [':bnext'     , 'next-buffer'],
      \ 'p' : [':bprevious' , 'previous-buffer'],
      \ 'w' : [':w'         , 'write' ],
      \ '?' : [':Buffers'   , 'fzf-buffer'],
      \ 'q' : [':q'         , 'quit-buffer'],
      \ ' ' : ['<ESC>'      , 'close' ],
      \ }


" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ 'B' : [':Buffers'               , 'open buffers'],
      \ 'f' : [':Files'                 , 'files'],
      \ 'l' : [':Lines'                 , 'lines'] ,
      \ 'm' : [':Marks'                 , 'marks'] ,
      \ 'M' : [':Maps'                  , 'normal maps'] ,
      \ 'P' : [':Tags'                  , 'project tags'],
      \ 'S' : [':Colors'                , 'color schemes'],
      \ 'w' : [':Windows'               , 'search windows'],
      \ 'y' : [':Filetypes'             , 'file types'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ 'h' : [':nohl'                  , 'remove search highlight'],
      \ ' ' : ['<ESC>'                  , 'close' ],
      \ }
      " \ 's' : [':Snippets'     , 'snippets'],

"let g:which_key_map.S = {
"      \ 'name' : '+Session' ,
"      \ 'c' : [':SClose'          , 'Close Session']  ,
"      \ 'd' : [':SDelete'         , 'Delete Session'] ,
"      \ 'l' : [':SLoad'           , 'Load Session']     ,
"      \ 's' : [':Startify'        , 'Start Page']     ,
"      \ 'S' : [':SSave'           , 'Save Session']   ,
"      \ ' ' : ['<ESC>'            , 'close' ],
"      \ }

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ 'n' : [':FloatermNew'                                   , 'terminal'],
      \ 'm' : [':FloatermNew lazynpm'                           , 'npm'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ ' ' : ['<ESC>'                                          , 'close' ],
      \ }
