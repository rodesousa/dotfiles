filetype plugin indent on

source ~/.config/nvim/plug.vim

" color
"colorscheme abstract
" colorscheme delek
"set background=light
"colorscheme PaperColor
hi Search cterm=NONE ctermfg=white ctermbg=red

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

set nocompatible
set number
set title

" TextEdit might fail if hidden is not set.
set hidden
set cmdheight=2
set updatetime=300

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
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
set nobomb
setlocal nobomb

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" click right and <c><s>V can paste the yank value
set clipboard=unnamedplus

" Map leader to ,
let mapleader=','

"""""" TEEEEEST

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
