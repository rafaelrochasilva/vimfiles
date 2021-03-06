source $HOME/.vim/deps.vim
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let g:data_home=expand("$HOME/.local/share/nvim")

set fileencoding=utf8 nobomb

set showmatch

set showcmd noshowmode

set confirm

set shortmess=aI

set splitright splitbelow

set diffopt+=vertical

set number numberwidth=3

set ignorecase smartcase

set cursorline

set switchbuf=useopen,usetab,split

set list

set virtualedit=block

set complete=.,w,b,u
set tags=tags,tags.gems

set wildignorecase
set wildmode=list:longest,list:full
set wildignore=*.zip,*.gz,*.bz,*.tar
set wildignore+=*.jpg,*.png,*.gif,*.avi,*.wmv,*.ogg,*.mp3,*.mov

set nowrap

set sessionoptions=buffers,tabpages,help

set copyindent cindent smartindent
set tabstop=2 shiftwidth=2 softtabstop=2
set expandtab shiftround

set lazyredraw

set foldmethod=manual nofoldenable

set fileformats+=mac

set nobackup nowritebackup noswapfile

set ttimeout

let mapleader=" "

let g:ackprg = 'ag --nogroup --nocolor --column'

set path+=**

set mouse=a

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

" Switch between the last two files
nnoremap <Leader><Leader> <c-^>

" Run rspec
let test#strategy = 'neovim'

if !has('nvim')
  let g:data_home=expand("$HOME/.local/share/vim")

  packadd matchit

  scriptencoding utf8

  set encoding=utf8 termencoding=utf8 nobomb
  set autoread autowriteall
  set autoindent
  set autoread
  set backspace=indent,eol,start
  set display=lastline
  set formatoptions=tcqj
  set history=100000
  set hlsearch
  set incsearch
  set langnoremap
  set laststatus=2
  set listchars="tab:> ,trail:-,nbsp:+"
  set mouse=a
  set nocompatible
  set nrformats=bin,hex
  set sessionoptions=buffers,tabpages,help
  set smarttab
  set tabpagemax=50
  set ttyfast
  set viminfo^=!
  set wildmenu
end

"""""""""""""""""""""
" vim-test extensions
"""""""""""""""""""""
function! ElixirUmbrellaTransform(cmd) abort
  if match(a:cmd, 'apps/') != -1
    return substitute(a:cmd, 'mix test apps/\([^/]*/\)', 'cd apps/\1 \&\& mix test ', '')
  else
    return a:cmd
  end
endfunction

let g:test#preserve_screen = 0
let g:test#custom_transformations = {'elixir_umbrella': function('ElixirUmbrellaTransform')}
let g:test#transformation = 'elixir_umbrella'

let g:mix_format_on_save = 1
