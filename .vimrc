filetype plugin indent on
syntax on

" Tab specific option
set tabstop=8                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple

set iskeyword=a-z,A-Z,_,.,39

execute pathogen#infect()

au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
au FileType lhaskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType lhaskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

let g:syntastic_aggregate_errors = 1
let g:syntastic_cpp_compiler = 'clang'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

"set textwidth=80
"set colorcolumn=+1

set splitbelow
set splitright
