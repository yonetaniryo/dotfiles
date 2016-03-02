" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:neocomplete#skip_auto_completion_time = '0.2'
let g:neocomplete#sources = {
  \ '_' : ['vim', 'omni', 'buffer', 'syntax', 'dictionary']
  \ }
let g:neocomplete#enable_fuzzy_completion = 0
