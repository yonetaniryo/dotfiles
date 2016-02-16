" python related

autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl expandtab tabstop=4 shiftwidth=4 softtabstop=4

let g:syntastic_python_checkers = ['pep8']
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
