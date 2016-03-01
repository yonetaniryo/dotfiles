:syntax enable

set ignorecase
set smartcase
set incsearch
set hlsearch
set shiftround
set hidden
set switchbuf=useopen
set showmatch
set backspace=indent,eol,start
set number
set relativenumber
set wrap
set textwidth=0
set nowritebackup
set nobackup
set noswapfile
set foldmethod=indent
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac
set spell
set spelllang=en
set cursorline
set noruler

" key mappings
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

" vimgrep
noremap <Leader>vg :vim 
autocmd QuickFixCmdPost *grep* cwindow

" window controls
noremap <Leader>w <C-w>w
noremap <Leader>oo <C-w>o

" misc
noremap <Leader>rel :source ~/.vimrc <CR>
noremap <Leader>n :<C-u>setlocal relativenumber!<CR>
noremap j gj
noremap k gk
