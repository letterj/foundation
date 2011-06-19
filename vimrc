" Basic
syntax on                       " syntax highlighting on

" General
set backup                      " make backup files
set backupdir=~/.vim/backup     " where to put backup files
set directory=~/.vim/tmp        " directory to place swap files in
set tabstop=4
set expandtab

"UI
set laststatus=2 " always show the status line
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
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


autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py inoremap # X^H#
autocmd BufRead *.py set tabstop=4
autocmd BufRead *.py set shiftwidth=4
autocmd BufRead *.py set smarttab
autocmd BufRead *.py set expandtab
autocmd BufRead *.py set softtabstop=4
autocmd BufRead *.py set autoindent
autocmd BufRead *.py highlight BadWhitespace ctermbg=red guibg=red
autocmd BufRead *.py match BadWhitespace /^\t\+/
autocmd BufRead *.py match BadWhitespace /\s\+$/


"Arduino
autocmd BufNewFile,BufReadPre *.pde setf arduino
