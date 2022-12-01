" neomake
let g:neomake_elixir_dialyzer_maker = {
    \ 'exe': 'mix',
    \ 'args': ['dialyzer'],
    \ 'append_file': 0
\ }
let g:neomake_elixir_enabled_makers = ['credo', 'mix', 'dogma', 'elixir', "dialyzer"]

" vim-elixir
"autocmd FileType elixir nmap <C-b> :ExDef<CR>
autocmd FileType elixir nmap <Leader>el :Neomake elixir<CR>
