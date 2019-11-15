" self defined functions

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

function! CalculateLine()
    execute('.!' . 'bc -q | xargs echo ' . getline('.') . " =")
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
