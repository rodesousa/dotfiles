" git color
highlight GitGutterAdd    ctermfg=121 ctermbg=121
highlight GitGutterChange ctermfg=74 ctermbg=74
highlight GitGutterDelete ctermfg=167 ctermbg=167

" Fugitive Conflict Resolution
nnoremap <leader>gd :Gvdiff<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>

" git
noremap <Leader><space>g :Git<CR>
noremap <Leader><space>d :Gdiffsplit<CR>
noremap <Leader><space>a :Gwrite<CR>
noremap <Leader><space>c :Git commit<CR>
noremap <Leader><space>m :Git commit --amend<CR>
