"Change theme depending on the time of day
let hr = (strftime('%H'))


" colorscheme solarized8_dark
set termguicolors
colorscheme ayu
let ayucolor="dark"

" if hr >= 18
"   colorscheme solarized8_dark
" elseif hr >= 7
"   colorscheme solarized8_light
" elseif hr >= 0
"   colorscheme solarized8_dark
" endif

set colorcolumn=120

hi! VertSplit guibg=NONE

let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1

"Set different cursors
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"Set ctrl_p to reuse the window
let g:ctrlp_reuse_window  = 'startify'

" Config colors for limelight
let g:limelight_conceal_ctermfg = 230
