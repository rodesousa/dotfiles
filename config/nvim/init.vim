filetype plugin indent on

source ~/.config/nvim/plug.vim
source ~/.config/nvim/plug-config/coc.vim

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

" Map leader to ,
let mapleader=','
au FileType elixir let $MIX_ENV = 'test'

hi Search cterm=NONE ctermfg=white ctermbg=red

""" Shortcurts
if filereadable(expand("~/.config/nvim/shortcut.vim"))
  source ~/.config/nvim/shortcut.vim
endif

command! -bang -nargs=* Rg
  \ call fzf#vim#grep('rg --column --no-heading --line-number --color=always '.shellescape(<q-args>),
  \ 1,
  \ fzf#vim#with_preview(),
  \ <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

""" Vim-Plug
if filereadable(expand("~/.config/nvim/abb.vim"))
  source ~/.config/nvim/abb.vim
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

