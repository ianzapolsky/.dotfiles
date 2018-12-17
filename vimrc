" Vundle
set nocompatible
" set encoding=utf-8
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'ludovicchabant/vim-gutentags'
call vundle#end()
filetype plugin indent on

" do not insert comment lines
au BufNewFile,BufRead * set formatoptions-=r formatoptions-=o

" backup files
set backupdir=~/.vimbackup

highlight ColorColumn guibg=LightGreen
set colorcolumn=80

" whitespace highlighting
match ErrorMsg '\s\+$'

" general settings
set backspace=2
set cursorline
set hlsearch
set ignorecase
set nowrap
set number
set ruler
set tabstop=4
set shiftwidth=4
set expandtab
filetype indent off

" syntax
syntax enable
set background=dark
set t_Co=256
" colorscheme jellybeans
colorscheme solarized

" jj instead of escape
:imap jj <Esc>

" NERDTree commands
:command NT NERDTree .
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeDirArrows = 0
let g:NERDTreeWinSize = 30
let g:NERDTreeIgnore = ['.pyc', '.swp']

" auto-open NERDTree if vim is run without commands
autocmd vimenter * if !argc() | NERDTree | endif

" NERDTree pane navigation
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k
map + <C-w>>
map _ <C-w><

" tmux pane navigation
noremap <silent> <C-h> :TmuxNavigateLeft<cr>
noremap <silent> <C-l> :TmuxNavigateRight<cr>
noremap <silent> <C-j> :TmuxNavigateDown<cr>
noremap <silent> <C-k> :TmuxNavigateUp<cr>

" treat .md files as markdown
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md  set ft=markdown textwidth=80

" set noexpandtab in Makefiles, and .c and .h files
au BufNewFile,BufRead Makefile,*.c,*.h set noexpandtab
au BufNewFile,BufRead Makefile,*.c,*.h set tabstop=4

" gotags configuration, copied from README
" (https://github.com/jstemmer/gotags)
:command TT TagbarToggle
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" majutsushi/tagbar shortcuts
nnoremap <silent> tt :TagbarToggle<CR>
nnoremap <silent> tj :TagbarOpen j<CR>
