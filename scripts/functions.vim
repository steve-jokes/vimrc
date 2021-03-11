" self defined functions

nmap <F3> :call Console()<CR>

function! Base64EncodeAll()
    execute('%!' . 'python ~/.vim/python_tools/base64_encode.py')
endfunction

function! Base64EncodeLine()
    execute('.!' . 'python ~/.vim/python_tools/base64_encode.py')
endfunction

function! Base64DecodeAll()
    execute('%!' . 'python ~/.vim/python_tools/base64_decode.py')
endfunction

function! Base64DecodeLine()
    execute('.!' . 'python ~/.vim/python_tools/base64_decode.py')
endfunction


function! EscapeAll()
    execute('%!' . 'python ~/.vim/python_tools/escape_text.py')
endfunction

function! EscapeLine()
    execute('.!' . 'python ~/.vim/python_tools/escape_text.py')
endfunction

function! UnEscapeAll()
    execute('%!' . 'python ~/.vim/python_tools/unescape_text.py')
endfunction

function! UnEscapeLine()
    execute('.!' . 'python ~/.vim/python_tools/unescape_text.py')
endfunction

function! FormatErrorAll()
    execute('%!' . 'python ~/.vim/python_tools/format_error.py')
endfunction

function! FormatErrorLine()
    execute('.!' . 'python ~/.vim/python_tools/format_error.py')
endfunction

function! XmlPrettier()
    execute('.!' . 'python ~/.vim/python_tools/xml_prettier.py')
endfunction

function! CalculateLine()
    execute('.!' . 'bc -q | xargs echo ' . getline('.') . " =")
endfunction

function! Console()
    execute('below terminal zsh')
    " execute(':set termwinsize=100*1000')
endfunction

function! BD(channel, code)
    execute(':bdelete')
endfunction

function! OpenFile()
    let cur_file = expand('%')
    execute(':bdelete')
    call term_start('zsh -c "x_open ' . cur_file . '"', {"exit_cb": "BD",})
endfunction

function! OpenDir()
    call term_start('zsh -c "x_open ."', { "exit_cb": "BD",})
endfunction

function! JsonAll()
    execute('%!' . 'python ~/.vim/python_tools/json_format.py')
    execute(':set syntax=json')
endfunction

function! JsonLine()
    execute('.!' . 'python ~/.vim/python_tools/json_format.py')
endfunction

function! UrlQuoteAll()
    execute('%!' . 'python ~/.vim/python_tools/url_quote.py')
endfunction

function! UrlQuoteLine()
    execute('.!' . 'python ~/.vim/python_tools/url_quote.py')
endfunction

function! UrlUnquoteAll()
    execute('%!' . 'python ~/.vim/python_tools/url_unquote.py')
endfunction

function! UrlUnquoteLine()
    execute('.!' . 'python ~/.vim/python_tools/url_unquote.py')
endfunction
