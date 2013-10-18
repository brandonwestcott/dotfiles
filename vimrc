execute pathogen#infect()

" Color Settings
set t_Co=256
set background=dark
colorscheme codeschool

" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
set wildmode=list:longest
" Allow backspace in insert mode
set backspace=indent,eol,start
" Change mapleader
let mapleader=","
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Show “invisible” characters
set listchars=tab:▸\ ,trail:·,eol:¬
set list
" Always show status line
set laststatus=2
" Don’t show the intro message when starting Vim
set shortmess=atI
" Disable error bells
set noerrorbells
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Better search options
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" Indentation Settings
" Make tabs as wide as two spaces
set tabstop=2
" Auto indent new line based on previous line indention
set autoindent
" Default to use spaces for tabs
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab

" Training wheels (disable arrow keys)
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
