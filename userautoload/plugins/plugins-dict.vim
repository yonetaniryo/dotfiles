autocmd FileType ref-* nnoremap <buffer> <silent> q :<C-u>close<CR>

let g:ref_source_webdict_sites = {
			\   'ej': {
			\     'url': 'http://dictionary.infoseek.ne.jp/ejword/%s',
			\   },
			\ }

let g:ref_source_webdict_sites.default = 'ej'

function! g:ref_source_webdict_sites.ej.filter(output)
	return join(split(a:output, "\n")[15 :], "\n")
endfunction

noremap <Leader>di :Ref webdict ej 
