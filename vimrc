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

" theme
syntax enable
set background=dark
set t_Co=256
colorscheme jellybeans

" jj instead of escape
:imap jj <Esc>

" NERDTree commands
:command NT NERDTree .
map <C-h> <C-w>h<C-w>
map <C-l> <C-w>l<C-w>
map <C-j> <C-w>j<C-w>
map <C-k> <C-w>k<C-w>
map = <C-W>><C-W>>
map - <C-W><<C-W><
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeWinSize = 30
let g:NERDTreeIgnore = ['tmp', '.pyc', '.swp']


" auto-open NERDTree if vim is run without commands
autocmd vimenter * if !argc() | NERDTree | endif


