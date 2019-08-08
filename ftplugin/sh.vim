" Shell specific settings.

let g:is_bash         =1
let g:sh_fold_enabled =7

function! MyShRun()
    let cur_file = expand('%')
    execute('below terminal zsh -c ./' . cur_file)
    execute(':set termwinsize=10*1000')
endfunction

nmap <F5> <Esc>:w<CR>:call MyShRun()<CR>
