call plug#begin()

" Nerdtree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdcommenter'

"LCN
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" cursors
Plug 'terryma/vim-multiple-cursors'

" Syntax highlighting
Plug 'sheerun/vim-polyglot'         " Languages support.

" snipet
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
  
"" Add :Gist commands
"Plug 'mattn/webapi-vim'
"Plug 'mattn/gist-vim'
  
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'

" Elixir formatting
Plug 'mhinz/vim-mix-format', { 'for': 'elixir' }
Plug 'slashmili/alchemist.vim'
Plug 'elixir-editors/vim-elixir'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Go
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}

" split block or joined
Plug 'AndrewRadev/splitjoin.vim'

" python
Plug 'zchee/deoplete-jedi'

" color
Plug 'jdsimcoe/abstract.vim'

call plug#end()
