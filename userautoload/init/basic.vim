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

" search
autocmd QuickFixCmdPost *grep* cwindow
noremap <S-s><S-s> :vim // %<Left><Left><Left>

" window controls
noremap <S-w> <C-w>w
noremap <S-q> :ccl <CR>

" motion
noremap j gj
noremap k gk
noremap <S-b>   (zz
noremap <S-f>   )zz
noremap <C-d> <C-d>zz
noremap <C-u> <C-u>zz

" misc
noremap <Leader>rel :source ~/.vimrc <CR>
noremap <S-c> :!pbcopy<CR> u
imap <C-j> <ESC>:w<CR>
