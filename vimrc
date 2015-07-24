" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
call vundle#end()
filetype plugin indent on

" backup files
set backupdir=~/.vimbackup

" colorcolumn
if version >= 703
  set colorcolumn=80
else
  match ErrorMsg '\%>80v.\+'
endif

" general settings
set cursorline
set hlsearch
set ignorecase
set nowrap
set number
set ruler
set tabstop=2
set expandtab

" syntax
syntax enable
set background=dark
set t_Co=256
colorscheme jellybeans

" jj instead of escape
:imap jj <Esc>

" NERDTree commands
:command NT NERDTree .
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeDirArrows = 0
let g:NERDTreeWinSize = 30
let g:NERDTreeIgnore = ['tmp', '.pyc', '.swp']

" auto-open NERDTree if vim is run without commands
autocmd vimenter * if !argc() | NERDTree | endif

" NERDTree pane navigation
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k
map = <C-w>>
map - <C-w><
