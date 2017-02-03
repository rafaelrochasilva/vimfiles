syntax enable

" current term: ocean-dark
if has("nvim")
  set termguicolors
else
  echo "Boring old console"
endif

set colorcolumn=80
highlight ColorColumn ctermbg=235 guibg=#3a404e

hi! VertSplit guibg=NONE

let g:NERDTreeWinPos = "right"

"Set different cursors
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"Set ctrl_p to reuse the window
let g:ctrlp_reuse_window  = 'startify'
