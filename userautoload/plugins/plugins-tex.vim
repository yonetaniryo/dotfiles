" tex-fold
let g:tex_fold_additional_envs = ['equation', 'algorithm', 'abstract', 'itemize', 'description', 'enumerate', 'paragraph']
" latexmk
noremap <Leader>ll :!latexmk -f %<CR>
noremap <Leader>ls :!pdflatex %<CR>
