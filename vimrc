set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Peter was here

"Pathogen Install
execute pathogen#infect()

"Vundle Bundles
"============================================================================================================

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'

set runtimepath^=~/.vim/bundle/ctrlp.vim

"Vim Settings
"============================================================================================================

syntax on
filetype plugin indent on
colorscheme slate

"Set settings
"============================================================================================================

"To insert space characters whenever the tab key is pressed, set the 'expandtab' option:
:set expandtab
:set tabstop=3
:retab "this will cause all previous tabs to be converted to spaces

:set nowrap          "Turn off line wrap
:set number          "Show Line numbers
:set dir=~/bin/swp   "The swap files are all stored in the specific directory


"Ignore the following directories
:set wildignore+=/home/peter/projects/*/target/*
:set wildignore+=/home/peter/projects/cq5/UI/target/*
:set wildignore+=/home/peter/projects/cq5/UI/target/*
:set wildignore+=/home/peter/projects/cq5/Config/*
:set wildignore+="/home/peter/projects/cq5/Enviroment Specific Config/*"
:set wildignore+=/home/peter/projects/wordpress/**
:set wildignore+=/home/peter/projects/*/wp-includes/*
:set wildignore+=/home/peter/projects/*/wp-admin/*
:set wildignore+=/home/peter/projects/Misc/*
:set wildignore+=/home/peter/projects/packages/*
:set wildignore+=/home/peter/projects/starauth/tmp/*
:set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg,*.zip,*.rar,*.JPG,*.BMP,*.GIF,*.PNG,*.JPEG,*.ZIP,*.RAR
:set wildignore+=.svn,.git
:set wildignore+=.*

"Location of the tags file for ctags - to generate : ctags -R .
:set tags=./tags,tags,~/projects/thegridto/application/tags,~/projects/cq5/tags,~projects/starauth/tags,~/projects/thegridto/

:set ic "ignore case in search
:set shell=bash

"Plugin Settings
"============================================================================================================

"Location of ctags and window width
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50

" NERDTree defaults to showing hidden files.
let NERDTreeShowHidden=1

" Force NERDTree to default to this width (in columns)
let NERDTreeWinSize=50

" Tell NERDTree to ignore display of SVN files.
let NERDTreeIgnore=['\.svn$', '\.svn/']

" Force NERDTree to use pretty arrows
let NERDTreeDirArrows=1

let html_no_rendering=1 " Disable underlining of tabs in HTML documents.

"This should be for the grep plugin that I don't have working yet
map <Leader>f :Ack --ignore-dir=cache --ignore-dir=target -i 

"Mapped Keys
"===========================================================================================================

map <F4> :TlistToggle<cr>
map <F5> :NERDTree ~/vimProjectLink<cr>
set backspace=2

"open c tags in new tab
":nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T

"Tabbing
"===========================================================================================================
" size of a hard tabstop
set tabstop=3

" size of an "indent"
set shiftwidth=3

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=3

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" always uses spaces instead of tab characters
set expandtab

:cd ~/projects
