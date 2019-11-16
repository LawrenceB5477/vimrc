filetype plugin indent on
filetype off
set nocompatible
set omnifunc=syntaxcomplete#Complete
set number
set autoindent 
set expandtab 
set tabstop=4 
set shiftwidth=4
set smarttab
set smartindent 
inoremap jk <ESC> 
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>


let mapleader = " "

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'connorholyday/vim-snazzy'
Plugin 'raimondi/delimitmate'
Plugin 'itchyny/lightline.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
au VimEnter * RainbowParenthesesToggle
au VimEnter * RainbowParenthesesLoadRound
au VimEnter * RainbowParenthesesLoadSquare
au VimEnter * RainbowParenthesesLoadBraces

call vundle#end()            " required
filetype plugin indent on    " required
set laststatus=2
" colorscheme snazzy 
syntax enable
"let g:SnazzyTransparent = 2
let g:lightline = {
\ 'colorscheme': 'snazzy',
\ }

let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
