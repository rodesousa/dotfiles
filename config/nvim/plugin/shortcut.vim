" NERD
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>
nmap <leader><F3> :NERDTreeFind<CR>
" Shift+i show hide files

" terminal
nnoremap <silent> <leader>sh :terminal<CR>
tnoremap <Esc> <C-\><C-n>

"" Tabs
nnoremap <silent> <Tab> gt
nnoremap <silent> <S-t> :tabnew<CR>
nnoremap <C-w><A-t> <C-w><S-T>

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv


"" move window
map <C-Left> :vertical resize -1<CR>
map <C-Right> :vertical resize +1<CR>
map <C-Up> :resize -1<CR>
map <C-Down> :resize +1<CR>

" fzf
map <C-P> :Files<CR>
map <Leader>b :Buffers<CR>

" add symbols
vmap d' c'<C-r>"'
nmap d' viwc'<C-r>"'<Esc>
vmap d" c"<C-r>""
nmap d" viwc"<C-r>""<Esc>
vmap d) c(<C-r>")
nmap d) viwc(<C-r>")<Esc>
vmap d} c{<C-r>"}
nmap d} viwc{<C-r>"}<Esc>
vmap d] c[<C-r>"]
nmap d] viwc[<C-r>"]<Esc>
vmap d* c*<C-r>"*
nmap d* viwc*<C-r>"*<Esc>
vmap d` c`<C-r>"`
nmap d` viwc`<C-r>"`<Esc>
vmap d< c<<C-r>">
nmap d< viwc<<C-r>"><Esc>

" vim-go
autocmd FileType go nmap <Leader>i <Plug>(go-info)

" vim-elixir
"autocmd FileType elixir nmap <C-b> :ExDef<CR>
autocmd FileType elixir nmap <Leader>el :Neomake elixir<CR>

" gundo
noremap <F4> :GundoToggle<CR>

" git
noremap <Leader><space>g :Git<CR>
noremap <Leader><space>d :Gdiffsplit<CR>
noremap <Leader><space>a :Gwrite<CR>
noremap <Leader><space>c :Git commit<CR>
noremap <Leader><space>m :Git commit --amend<CR>

" search
noremap <Leader>f :Rg<CR>

" ctags
nmap <F6> :TagbarToggle<CR>

" helper
" CTRL-O previous location

" UPPERCASE/lowercase
" g~
" gu
" gU

" gist
" :Gist -l -> gist list
"
