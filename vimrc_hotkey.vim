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

function! EscapeAll()
    execute('%!' . 'python /Users/memphisw/.vim/python_tools/escape_text.py')
endfunction

function! EscapeLine()
    execute('.!' . 'python /Users/memphisw/.vim/python_tools/escape_text.py')
endfunction

function! UnEscapeAll()
    execute('%!' . 'python /Users/memphisw/.vim/python_tools/unescape_text.py')
endfunction

function! UnEscapeLine()
    execute('.!' . 'python /Users/memphisw/.vim/python_tools/unescape_text.py')
endfunction

function! FormatErrorAll()
    execute('%!' . 'python /Users/memphisw/.vim/python_tools/format_error.py')
endfunction

function! FormatErrorLine()
    execute('.!' . 'python /Users/memphisw/.vim/python_tools/format_error.py')
endfunction

function! Console()
    execute('below terminal zsh')
    " execute(':set termwinsize=100*1000')
endfunction

function! JsonAll()
    execute('%!python -m json.tool')
endfunction

function! JsonLine()
    execute('.!python -m json.tool')
endfunction
