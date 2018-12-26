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

nmap <C-b> :BufExplorer<CR>
nmap <silent><F8> :NERDTreeToggle<CR>:TagbarToggle<CR><C-I>

" reformat
nmap <C-l> mpgg=G`p
