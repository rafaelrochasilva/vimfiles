call plug#begin(expand('$HOME/.vim/_deps'))

" Tools
Plug 'benekastah/neomake'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim' " Search into files using ack
Plug 'tpope/vim-commentary' " Comment code
Plug 'cohama/lexima.vim' " Auto close parentheses
Plug 'rizzatti/dash.vim' " Dash
Plug 'godlygeek/tabular'
Plug 'airblade/vim-gitgutter' " Git changes
" Plug 'lifepillar/vim-solarized8' " Solarized8 theme
Plug 'zivyangll/git-blame.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'
" Plug 'jez/vim-colors-solarized'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'ayu-theme/ayu-vim' "Theme

" Vim markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/limelight.vim'

" Test
Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'

" Tomdoc
Plug 'wellbredgrapefruit/tomdoc.vim'

" Markdown
Plug 'tpope/vim-markdown', { 'for': ['markdown'] }

" HTML, javascript, css, scss, less
Plug 'othree/html5.vim', { 'for': ['html', 'eruby'] }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'html', 'eruby'] }

" Ruby
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'eruby'] }

" Rails
Plug 'tpope/vim-rails', { 'for': ['ruby'] }

" Elixir
Plug 'elixir-lang/vim-elixir', { 'for': ['elixir', 'eelixir'] }
Plug 'avdgaag/vim-phoenix', { 'for': ['elixir', 'eelixir'] }

" Erlang
Plug 'vim-erlang/vim-erlang-runtime', { 'for': ['erlang'] }
Plug 'vim-erlang/vim-erlang-omnicomplete', { 'for': ['erlang'] }
Plug 'vim-erlang/vim-erlang-compiler', { 'for': ['erlang'] }

" Elm
" Plug 'elmcast/elm-vim', { 'for': ['elm'] }

" Slim
Plug 'slim-template/vim-slim', { 'for': ['slim'] }

" Coffeescript
" Plug 'kchmck/vim-coffee-script'

" Lisp
" Plug 'l04m33/vlime', {'rtp': 'vim/'}

" Swift
" Plug 'keith/swift.vim'

" Elixir Formater
Plug 'mhinz/vim-mix-format', { 'for': ['elixir'] }

call plug#end()

command! Pupgrade PlugUpgrade | PlugUpdate
