" JavaScript specific settings

setlocal foldlevel =2

function! OnJSRunExit(channel, code)
    " execute('bd')
endfunction

function! RunJS()
    let cur_file = expand('%:t')
    let cur_dir = expand('%:p:h')

    call execute('set splitbelow')
    echomsg cur_file
    call term_start('zsh -c "cd ' . cur_dir . ' && node ./' . cur_file . '"', {
                \"term_rows": 10,
                \"exit_cb": "OnJSRunExit",
                \})
endfunction

map <F5> <Esc>:w<CR>:call RunJS()<CR>

