filetype plugin indent on

""" Vim-Plug

if filereadable(expand("~/.config/nvim/plug.vim"))
  source ~/.config/nvim/plug.vim
endif

" color
colorscheme abstract

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

set nocompatible
set number
set title

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
"set list
set expandtab

" Generally configure tabs to 2, and convert to spaces
set tabstop=2
set backspace=2
set softtabstop=2
set shiftwidth=2
set shiftround
set nojoinspaces

" Backups
set nobackup
set nowritebackup
set noswapfile

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb


" Map leader to ,
let mapleader=','

" LSP
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {}
let g:LanguageClient_serverCommands.go = ['go-langserver', '-gocodecompletion']
"let g:LanguageClient_serverCommands.go = ['gopls']
" go get -u golang.org/x/tools/cmd/gopls
"let g:LanguageClient_serverCommands.elixir = ['language_server.sh']
" git clone git@github.com:JakeBecker/elixir-ls.git ~/.elixir_ls
" cd ~/.elixir_ls
" mix deps.get && mix compile
" mix elixir_ls.release - .
" add it to the $PATH
let g:LanguageClient_serverCommands['javascript'] = ['javascript-typescript-stdio']
let g:LanguageClient_serverCommands['typescript'] = ['javascript-typescript-stdio']
let g:LanguageClient_serverCommands['javascript.jsx'] = ['javascript-typescript-stdio']
" yarn global add javascript-typescript-langserver   -or-
" npm i -g javascript-typescript-langserver
let g:LanguageClient_serverCommands.reason = ['ocaml-language-server', '--stdio']
let g:LanguageClient_serverCommands.ocaml = ['ocaml-language-server', '--stdio']
" opam init
" opam install merlin
" opam user-setup install
" yarn global add ocaml-language-server   -or-
" npm i -g ocaml-language-server

" deoplete
let g:deoplete#enable_at_startup = 1

" git color
highlight GitGutterAdd    ctermfg=121 ctermbg=121
highlight GitGutterChange ctermfg=74 ctermbg=74
highlight GitGutterDelete ctermfg=167 ctermbg=167

"" vim-go
"let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_fmt_command = "goimports" "auto add/remove import
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1
let g:go_code_completion_enabled = 0
let g:go_metalinter_autosave = 0 " autolint when save

" elixir
let g:alchemist_tag_map = '<C-b>'
let g:alchemist_tag_stack_map = '<C-T>'
let g:mix_format_on_save = 1
let g:mix_format_options = '--check-equivalent'

" gist
let g:gist_show_privates = 1

""" Shortcurts

if filereadable(expand("~/.config/nvim/shortcut.vim"))
  source ~/.config/nvim/shortcut.vim
endif

