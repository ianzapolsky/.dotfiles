set number
syntax on
set tabstop=2
set colorcolumn=80

set ignorecase
set ruler
set expandtab


let &t_Co=256
set background=dark
colorscheme lettuce

vmap <silent> ;h :s?^\(\s*\)+ '\([^']\+\)',*\s*$?\1\2?g<CR> 
vmap <silent> ;q :s?^\(\s*\)\(.*\)\s*$? \1 + '\2'?<CR>


