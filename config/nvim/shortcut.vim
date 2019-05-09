" NERD
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" terminal
nnoremap <silent> <leader>sh :terminal<CR>
tnoremap <Esc> <C-\><C-n>

"" Tabs
nnoremap <Tab> gt
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

"LCN
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <C-b> :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" split/join
" gs | gS
