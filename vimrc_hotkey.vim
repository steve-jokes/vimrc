" Hotkey Configuration

let mapleader= ";"       " set leader key for map

nmap <Leader>0 $
vmap <Leader>0 $
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :x<CR>

xnoremap p pgvy

nmap <space> :
vmap <space> :
nmap <C-n> :nohl<CR>

nmap <Leader>j <C-w>j
nmap <Leader>k <C-w>k
nmap <Leader>h <C-w>h
nmap <Leader>l <C-w>l

" general reformat
nmap <C-l> mpgg=G`p
