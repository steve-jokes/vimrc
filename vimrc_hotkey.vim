" Hotkey Configuration 

nmap <Leader>0 $
nmap <Leader>w :w<CR>
nmap <Leader>x :x<CR>
nmap <Leader>q :q<CR>

xnoremap p pgvy

nmap <space> :
nmap <C-n> :nohl<CR>
nmap <Tab> <C-w>w
nmap <Leader><Leader>h <C-w>h
nmap <Leader><Leader>l <C-w>l
nmap <Leader><Leader>s :Rgrep<CR>

" ========= json short cut ============
map <F4> <Esc>:%!python -m json.tool<CR>
map <F5> <Esc>:w<CR>:GoBuild<CR>

"autocmd FileType python nnoremap <Leader>= :0,$!yapf<CR> " beautiful python code
"autocmd FileType python nnoremap <Leader>i :!isort %<CR><CR> " rearange python import

" ==========
nmap <C-b> :BufExplorer<CR>
nmap <silent><F8> :TagbarToggle<CR>:WMToggle<CR>
" ==========
