syntax enable
" set termguicolors

if has("gui_running")
  set background=light
  colorscheme base16-solarized-light
endif

set synmaxcol=500
set colorcolumn=80
" highlight ColorColumn ctermbg=Black

hi! VertSplit guibg=NONE

let g:NERDTreeWinPos = "right"
