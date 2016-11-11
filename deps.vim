call plug#begin(expand('$HOME/.vim/_deps'))


" Tools
Plug 'benekastah/neomake'
Plug 'scrooloose/nerdtree'
Plug 'chriskempson/base16-vim'
Plug 'chriskempson/base16-iterm2'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim' " Search into files using ack
Plug 'tpope/vim-commentary' " Comment code
Plug 'cohama/lexima.vim' " Auto close parentheses
Plug 'rizzatti/dash.vim' " Dash

" Tomdoc
Plug 'wellbredgrapefruit/tomdoc.vim'

" Markdown
Plug 'tpope/vim-markdown', { 'for': ['markdown'] }

" HTML, javascript, css, scss, less
Plug 'othree/html5.vim', { 'for': ['html', 'eruby'] }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'html', 'eruby'] }

" Ruby
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'eruby'] }
Plug 'Keithbsmiley/rspec.vim', { 'for': ['ruby'] }
Plug 'sunaku/vim-ruby-minitest', { 'for': ['ruby'] }

" Rails
Plug 'tpope/vim-rails', { 'for': ['ruby'] }

" Elixir
Plug 'elixir-lang/vim-elixir', { 'for': ['elixir', 'eelixir'] }

call plug#end()

command! Pupgrade PlugUpgrade | PlugUpdate
