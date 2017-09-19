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

" RSpec.vim mappings
nnoremap <leader>r :RunSpec<CR>G
nnoremap <leader>l :RunSpecLine<CR>G
nnoremap <leader>e :RunSpecLastRun<CR>G
nnoremap <leader>cr :RunSpecCloseResult<CR>G

" Ack mappings
map <leader>a :Ack!<Space>
