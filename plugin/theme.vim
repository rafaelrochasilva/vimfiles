syntax enable

" set termguicolors
if has("gui_running")
  set background=light
  colorscheme base16-solarized-light
endif

set colorcolumn=80

hi! VertSplit guibg=NONE

let g:NERDTreeWinPos = "right"

"Set different cursors
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
