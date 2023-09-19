call plug#begin(expand('$HOME/.vim/_deps'))

" Tools
Plug 'benekastah/neomake'

" Serch Files
Plug 'ctrlpvim/ctrlp.vim'

" Nav Bar
Plug 'scrooloose/nerdtree'

" Fix identation
Plug 'godlygeek/tabular'

" Go to Github Browser
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Comment code
Plug 'tpope/vim-commen:tary' 
"
" Auto close parentheses
Plug 'cohama/lexima.vim'

" Dash
Plug 'rizzatti/dash.vim'

" Search into files using ack
Plug 'mileszs/ack.vim'

" Git changes
Plug 'airblade/vim-gitgutter' 
Plug 'zivyangll/git-blame.vim'

" Themes
Plug 'ayu-theme/ayu-vim' "Theme
Plug 'sonph/onehalf', {'rtp': 'vim/'} "Color scheme

" Vim markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/limelight.vim'

" Test
Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'

" Tomdoc - make comments doc  prettier
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
Plug 'mhinz/vim-mix-format', { 'for': ['elixir'] }

" Erlang
" Plug 'vim-erlang/vim-erlang-runtime', { 'for': ['erlang'] }
" Plug 'vim-erlang/vim-erlang-omnicomplete', { 'for': ['erlang'] }
" Plug 'vim-erlang/vim-erlang-compiler', { 'for': ['erlang'] }

" Elm
" Plug 'elmcast/elm-vim', { 'for': ['elm'] }

" Slim
" Plug 'slim-template/vim-slim', { 'for': ['slim'] }

" Coffeescript
Plug 'kchmck/vim-coffee-script'

" Lisp
" Plug 'l04m33/vlime', {'rtp': 'vim/'}

" Swift
" Plug 'keith/swift.vim'

" SQL formater
Plug 'SQLUtilities', { 'for': ['sql'] }

call plug#end()

command! Pupgrade PlugUpgrade | PlugUpdate
