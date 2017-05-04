let mapleader = "\<Space>"

nnoremap Y y$

" NERDTree mappings
nnoremap <silent> <C-e> :NERDTreeToggle<cr>

" History
nnoremap <leader>h :CtrlPBuffer<cr>

nnoremap <silent> <c-l> :nohlsearch<cr><c-l>

" Dash mappings
nnoremap <leader>d :Dash<cr>

" Current relative path
nnoremap <leader>cf :let @*=expand("%")<CR>

" Vertical window resize right
nnoremap <leader>n :vertical resize -5<cr>

" Vertical window resize left
nnoremap <leader>m :vertical resize +5<cr>

" " RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
