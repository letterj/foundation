" Basic
syntax on                       " syntax highlighting on

" General
set backup                      " make backup files
set backupdir=/tmp             " where to put backup files
set directory=/tmp             " directory to place swap files in
set tabstop=4
set shiftwidth=4
set expandtab

" NERD_tree config
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1

"UI
set laststatus=2 " always show the status line
" set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current 
"              | | | | |  |   |      |  |     |       column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in 
"              | | | | |  |   |          square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer

"Python Section
set term=builtin_ansi
"set verbose=9

set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)
filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP-8 Friendly
au FileType py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
au FileType py inoremap # X^H#
au FileType py highlight BadWhitespace ctermbg=red guibg=red
au FileType py match BadWhitespace /^\t\+/
au FileType py match BadWhitespace /\s\+$/


"Arduino
au BufNewFile,BufReadPre *.pde setf arduino
