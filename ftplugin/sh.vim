" Shell specific settings.

let g:is_bash         =1
let g:sh_fold_enabled =7

function! MyShRun()
    let cur_file = expand('%')
    execute('below terminal zsh -c ./' . cur_file)
    execute(':set termwinsize=10*1000')
endfunction

nmap <F5> <Esc>:w<CR>:call MyShRun()<CR>

function! AddTitle()
    call setline(1,"#!/bin/bash")
    call append(1,"#====================================================")
    call append(2,"# Author     : memphisw")
    call append(3,"# Create Date: " . strftime("%Y-%m-%d"))
    call append(4,"# Description: ")
    call append(5,"#====================================================")
endf
