"Change theme depending on the time of day
let hr = (strftime('%H'))

if hr >= 18
  colorscheme solarized8_dark
elseif hr >= 7
  colorscheme solarized8_light
elseif hr >= 0
  colorscheme solarized8_dark
endif

set colorcolumn=80

hi! VertSplit guibg=NONE

let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1

"Set different cursors
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"Set ctrl_p to reuse the window
let g:ctrlp_reuse_window  = 'startify'
