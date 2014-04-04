" This must be first, because it changes other options as a side effect
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
Bundle 'airblade/vim-gitgutter'

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_max_files = 0

"Vim Settings
"============================================================================================================

syntax on
filetype plugin indent on
colorscheme slate

" Current line color - GUI
hi CursorLine   guibg=gray18
hi CursorColumn guibg=gray18

"Set settings
"============================================================================================================
"If the gui is running
:set guifont=Source\ Code\ Pro\12

set encoding=utf-8          " Necessary to show Unicode glyphs
set history=50              " Keep 50 lines of command line history
set undolevels=200          " Keep 200 undo levels in history
set showcmd                 " Display incomplete commands
set incsearch               " Do incremental searching
set ignorecase              " Searches should be case-insensitive by default
set wildignore+=*.svn       " Prevent vim and its plugins from ever displaying or working with SVN files.
set cursorline              " Turn on highlighting of current line.
hi CursorLine term=bold cterm=bold guibg=Grey40 
set clipboard=unnamed       " Sets default register to be * register, which is the system clipboard. So Cmd+C and y are now the same thing; Cmd+V and p are now the same thing! Compatible with yankring.
set guicursor+=n-v:blinkon0 " Disable cursor blinking (blinkon0) in normal (n) and visual (v) modes, but not in insert (i; omitted) mode.

" In many terminal emulators the mouse works just fine, thus enable it.
" if has('mouse')
"   set mouse=a
" endif


"To insert space characters whenever the tab key is pressed, set the 'expandtab' option:
:set expandtab
:set tabstop=3
:retab "this will cause all previous tabs to be converted to spaces

:set nowrap          "Turn off line wrap
:set number          "Show Line numbers
:set dir=~/swp   "The swap files are all stored in the specific directory


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

"do not clear cache on exit
let g:ctrlp_clear_cache_on_exit=0

" Set desired diff colors.
highlight DiffAdd guibg=DarkGreen
highlight DiffChange guibg=DarkBlue
highlight DiffText guibg=Orange
highlight DiffDelete guibg=DarkRed

"Location of ctags and window width
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50

" NERDTree defaults to showing hidden files.
let NERDTreeShowHidden=1

" Force NERDTree to default to this width (in columns)
let NERDTreeWinSize=40

" Tell NERDTree to ignore display of SVN files.
let NERDTreeIgnore=['\.svn$', '\.svn/']

" Force NERDTree to use pretty arrows
let NERDTreeDirArrows=1

let html_no_rendering=1 " Disable underlining of tabs in HTML documents.

"This should be for the grep plugin that I don't have working yet
map <Leader>f :Ack --ignore-dir=cache --ignore-dir=target -i 

autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"Mapped Keys
"===========================================================================================================
let g:yankring_replace_n_pkey = '<C-M>'
map <F4> :TlistToggle<cr>
map <F5> :NERDTree ~/vimProjectLink<cr>
set backspace=2

"open c tags in new tab
":nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T

"Tab is 2 arrows? now it's one instead
:nnoremap > >>
:nnoremap < <<

" Add keyboard shortcuts
map <Leader>. gt
map <Leader>, gT
map <Leader>w :w<cr>
map <Leader>q :q<cr>
map <Leader>t :tabnew<cr>

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
