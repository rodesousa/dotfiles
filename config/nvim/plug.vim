call plug#begin()

"" Nerdtree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdcommenter'

"" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"" deoplete
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"" cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"" snipet
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
  
"" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"" color
Plug 'jdsimcoe/abstract.vim'

Plug 'sjl/gundo.vim', { 'on': 'GundoToggle' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Elixir
"Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format', { 'for': 'elixir' }
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}

"" Syntax highlighting
Plug 'sheerun/vim-polyglot'         " Languages support.

Plug 'neomake/neomake'

call plug#end()
