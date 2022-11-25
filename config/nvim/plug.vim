call plug#begin()

"" Nerdtree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdcommenter'

"" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'neoclide/coc-tsserver'

"" elixir
Plug 'elixir-editors/vim-elixir'

"" cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"" snipet
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" test
Plug 'vim-test/vim-test'

"" Syntax highlighting
Plug 'sheerun/vim-polyglot'         " Languages support.

"" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'rhysd/git-messenger.vim'

"" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"" theme
Plug 'sainnhe/sonokai'
Plug 'ayu-theme/ayu-vim'
Plug 'altercation/vim-colors-solarized'

" indent lines
Plug 'Yggdroot/indentLine'

call plug#end()
