" ian's vimrc

" use pathogen for package management
execute pathogen#infect()

" settings
set colorcolumn=80
set cursorline
set hlsearch
set ignorecase
set nowrap
set number
set ruler
set tabstop=2
set expandtab

" markdown highlighting on .md files
au BufRead,BufNewFile *.md set filetype=markdown

" theme
syntax enable
set background=dark
set t_Co=256
colorscheme jellybeans

" jj instead of escape
:imap jj <Esc>

" NERDTree commands
:command NT NERDTree .
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k
map = <C-w>>
map - <C-w><
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeDirArrows = 0
let g:NERDTreeWinSize = 30
let g:NERDTreeIgnore = ['tmp', '.pyc', '.swp']

" auto-open NERDTree if vim is run without commands
autocmd vimenter * if !argc() | NERDTree | endif


