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
" Mouse scrolling
set mouse=a

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
" Indent lines with ctrl+[ and ctrl+]
nmap <c-]> >>
nmap <c-[> <<
vmap <c-[> <gv
vmap <c-]> >gv

" Commenting
filetype plugin on
" Comment lines with ctrl+/ (hack through _)
map  <C-_> <leader>c<space>
vmap <C-_> <leader>c<space>

" Nerdtree
let NERDTreeQuitOnOpen=0
" Nerdtree Show/Hide
" map <C-n> :NERDTreeToggle<CR>
map <C-n> :NERDTreeTabsToggle<CR>
" Hide second Nerdtree buffer if open
autocmd VimEnter * if bufname('1') == 'NERD_tree_1' | silent execute "bd 2" | endif
" Autoshow nerdtree when not committing
" autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | wincmd p | endif
" config options
let g:nerdtree_tabs_autoclose=0
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_open_on_gui_startup=1

" Buffer File List
map <c-b> :CtrlPBuffer<CR>

" Finding
map <c-f> :Ack<space>

"Window switching
imap jk <c-[>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Scrolling
map <S-k> <c-u>
map <S-j> <c-d>

" Training wheels (disable arrow keys)
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
