filetype plugin indent on

source ~/.config/nvim/plug.vim

" color
colorscheme abstract
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
