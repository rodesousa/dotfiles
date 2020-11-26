" neomake
let g:neomake_elixir_dialyzer_maker = {
    \ 'exe': 'mix',
    \ 'args': ['dialyzer'],
    \ 'append_file': 0
\ }
let g:neomake_elixir_enabled_makers = ['credo', 'mix', 'dogma', 'elixir', "dialyzer"]

