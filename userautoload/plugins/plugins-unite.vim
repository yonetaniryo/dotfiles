" unite
let g:unite_enable_start_insert=1
if executable('ag')
	let g:unite_source_grep_command = 'ag'
	let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
	let g:unite_source_grep_recursive_opt = ''
endif
" unite outline
noremap <Leader>o :Unite -vertical -winwidth=30 outline <CR> <esc>
noremap <Leader>ff :Unite file_mru<CR>
