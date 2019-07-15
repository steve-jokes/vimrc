" Hotkey Configuration

nmap <Leader>0 $
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

nmap <Leader><Leader>s :Rgrep<CR>

nmap <C-b> :BufExplorer<CR>
nmap <silent><F8> :NERDTreeToggle<CR>:TagbarToggle<CR><C-I>

" reformat
nmap <C-l> mpgg=G`p

nmap <F3> :call Console()<CR>

function! EscapeText()
    execute('%!' . 'python -c ' . "'" . 'import sys, jsonfor line in sys.stdin: print(line.replace("\\", "\\\\").replace("\"", "\\\""), end="")' . "'")
endfunction

function! UnEscapeText()
    execute('%!' . 'python -c ' . "'" . 'import sys, jsonfor line in sys.stdin: print(line.replace("\\\"", "\"").replace("\\\\", "\\"), end="")' . "'")
endfunction

function! Console()
    execute('below terminal zsh')
endfunction
