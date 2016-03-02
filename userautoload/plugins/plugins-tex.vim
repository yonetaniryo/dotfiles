" tex-fold
let g:tex_fold_additional_envs = ['equation', 'algorithm', 'abstract', 'itemize', 'description', 'enumerate', 'paragraph']
" latexmk

let g:vimtex_fold_enabled = 0
let g:vimtex_fold_automatic = 0
let g:vimtex_fold_envs = 0

if !exists('g:neocomplete#sources#omni#input_patterns')
	let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.tex = '\\ref{\s*[0-9A-Za-z_:]*'
let g:neocomplete#sources#omni#input_patterns.tex = '\\cite{\s*[0-9A-Za-z_:]*\|\\ref{\s*[0-9A-Za-z_:]*'
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/MacOS/Skim'
