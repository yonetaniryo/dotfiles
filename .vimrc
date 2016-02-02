:syntax enable

autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl expandtab tabstop=4 shiftwidth=4 softtabstop=4

" settings from http://lambdalisue.hatenablog.com/entry/2013/06/23/071344
augroup MyAutoCmd
	autocmd!
augroup END

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

" key mappings
let mapleader = "\<Space>"
" unite
noremap <Leader>ff :Unite file_mru<CR>
" latex
noremap <Leader>ll :!latexmk -f %<CR>
noremap <Leader>ls :!pdflatex %<CR>
" vimgrep
noremap <Leader>vg :vim 
" window controls
noremap <Leader>w <C-w>w
noremap <Leader>o <C-w>w<C-w>o
noremap <Leader>oo <C-w>o
noremap <Leader>rel :source ~/.vimrc <CR>
" sneak
nmap s <Plug>Sneak_s
nmap S <Plug>Sneak_S
" ref-dict
noremap <Leader>d :Ref hyperdict 
noremap <Leader>dp :Ref hyperdict <C-R>" <CR>

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'Shougo/vimproc'
NeoBundle 'bling/vim-airline'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tell-k/vim-autopep8'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'justinmk/vim-sneak'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'ujihisa/neco-look'
NeoBundle 'thinca/vim-ref'
NeoBundle 'mfumi/ref-dicts-en'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" color
:colorscheme solarized
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
let g:solarized_contrast="high"
:set cursorline
:set background=light

" unite
let g:unite_enable_start_insert=1
if executable('ag')
	let g:unite_source_grep_command = 'ag'
	let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
	let g:unite_source_grep_recursive_opt = ''
endif

" vim airline
set laststatus=2
set showtabline=2
set noshowmode

" python related
let g:syntastic_python_checkers = ['pep8']
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0

" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0

" vimgrep
autocmd QuickFixCmdPost *grep* cwindow

" vim-sneak
let g:sneak#streak = 1
