call plug#begin(expand('$HOME/.vim/_deps'))

" Tools
Plug 'benekastah/neomake'
Plug 'scrooloose/nerdtree'
" Plug 'chriskempson/base16-vim'
" Plug 'chriskempson/base16-iterm2'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim' " Search into files using ack
Plug 'tpope/vim-commentary' " Comment code
Plug 'cohama/lexima.vim' " Auto close parentheses
Plug 'rizzatti/dash.vim' " Dash
Plug 'godlygeek/tabular'
Plug 'airblade/vim-gitgutter' " Git changes

" Tomdoc
Plug 'wellbredgrapefruit/tomdoc.vim'

" Markdown
Plug 'tpope/vim-markdown', { 'for': ['markdown'] }

" HTML, javascript, css, scss, less
" Plug 'othree/html5.vim', { 'for': ['html', 'eruby'] }
" Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'html', 'eruby'] }

" Ruby
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'eruby'] }
Plug 'janko-m/vim-test'

" Rails
Plug 'tpope/vim-rails', { 'for': ['ruby'] }

" Elixir
" Plug 'elixir-lang/vim-elixir', { 'for': ['elixir', 'eelixir'] }

" Elm
" Plug 'elmcast/elm-vim', { 'for': ['elm'] }

call plug#end()

command! Pupgrade PlugUpgrade | PlugUpdate
