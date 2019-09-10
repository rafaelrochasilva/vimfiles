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

" vim.test mappings
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>ta :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

"Retab
map <leader>r :set expandtab | retab<CR>

" Ack mappings
map <leader>a :Ack!<Space>

" The built-in mapping for exiting terminal insert mode
nmap <leader>o <C-\><C-n>

" Jump to last line centralizing
nmap <leader>b <C-o>zz

" Night mode
nnoremap <Leader>1 :colorscheme solarized8_dark<CR>

" Day mode
nnoremap <Leader>2 :colorscheme solarized8_light<CR>

" Git blame
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

" coc.nvim
"  navigate completion list:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" to confirm complete
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Ctrl + c
vmap <leader>c "+yi

" Remap keys for gotos
" nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  'deps\|\.git$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
