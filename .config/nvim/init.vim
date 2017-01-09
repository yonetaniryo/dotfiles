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
set tabstop=2
set nowritebackup
set nobackup
set noswapfile
set foldmethod=indent
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac
set spell
set spelllang=en,cjk
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
noremap <S-b>   (
noremap <S-f>   )
noremap <C-d> <C-d>
noremap <C-u> <C-u>

" misc
imap <C-j> <ESC>:w<CR>
nnoremap <C-j> :w<CR>

" nvim
set sh=zsh
tnoremap <silent> <C-j> <C-\><C-n>gT

" dein
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/yonetani/.config/nvim/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/yonetani/.config/nvim')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
let g:rc_dir    = expand("~/.config/nvim/")
let s:toml      = g:rc_dir . '/dein.toml'
call dein#load_toml(s:toml,      {'lazy': 0})

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
