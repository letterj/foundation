"basic
syntax on                      " syntax highlighting on

" General
set backup                     " make backup files
set backupdir=/tmp             " where to put backup files
set directory=/tmp             " directory to place swap files in
set tabstop=4
set shiftwidth=4
set expandtab

" Comment Color
hi Comment      ctermfg=lightblue

" Set hidden characters
:set listchars=eol:$,tab:>-,trail:~
:set list

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

" This shows what you are typing as a command.
set showcmd

" Remap jj to <Escape> in insert mode
inoremap jj <Esc>  

"A little easier way to switch between buffers
map <C-j> :bprev<CR>
map <C-k> :bnext<CR> 

"Disable Arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

