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
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'tell-k/vim-autopep8'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'justinmk/vim-sneak'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'NLKNguyen/papercolor-theme'
NeoBundle 'lervag/vim-latex'
NeoBundle 'Konfekt/FastFold'
NeoBundle 'matze/vim-tex-fold'
NeoBundle 'ujihisa/neco-look'
NeoBundle 'thinca/vim-ref'
NeoBundle 'YankRing.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
