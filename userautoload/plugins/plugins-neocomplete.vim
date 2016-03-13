" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:neocomplete#enable_fuzzy_completion = 0
let g:neocomplete#sources = { '_' : ['file', 'omni', 'look', 'buffer'] }
" inoremap <expr><C-X><C-B> neocomplete#start_manual_complete('buffer')
" lnoremap <expr><C-X><C-L> neocomplete#start_manual_complete('look')
