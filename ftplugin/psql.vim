" SQL specific settings.

let pgpass = readfile(glob('~/.pgpass'))[0]
let segs = split(pgpass, ':')

let host     = segs[0]
let port     = segs[1]
let dbname   = segs[2]
let user     = segs[3]
let password = segs[4]

let s:meta = printf("host=%s port=%s dbname=%s user=%s password=%s", host, port, dbname, user, password)

function! PostgresRun()
    let start_time = reltime() 
    let [lnum1, col1] = getpos("'<")[1:2]
    let [lnum2, col2] = getpos("'>")[1:2]
    let lines = getline(lnum1, lnum2)
    let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][col1 - 1:]

    " let sql = join(lines, "\n")
    let sql = join(lines, " ")

    let cmd = 'date && echo "Run:" && echo '
    for line in lines
        let cmd = cmd . '&& echo "' . escape(line, '"\') . '" '
    endfor
    let cmd = cmd . '&& echo "***********************" '
    let cmd = cmd . printf("&& time psql \"%s\" -P pager=off -c \"%s\"", s:meta, escape(sql, '"\'))
    let cmd = cmd . '&& echo "Done"'

    call execute('below terminal zsh -c "' . escape(cmd, '"\') . '"' )
    call execute('set termwinsize=10*10000')
    call execute('set syntax=sql')
    " echomsg reltimestr(reltime(l:start_time))
endfunction

function! OnPsqlStdOut(channel, msg)
    call execute('set syntax=sql')
    " call append(line('$'), 'out: ' . a:msg)
    " echomsg 'out: ' . a:msg
endfunction

function! OnPsqlStdErr(channel, msg)
    " call append(line('$'), 'err: ' . a:msg)
    " echomsg 'err: ' . a:msg
endfunction

function! OnPsqlClose(channel)
    while ch_status(a:channel, {'part': 'out'}) == 'buffered'
        " call append(line('$'), 'end: ' . ch_read(a:channel))
        " echomsg 'end: ' . a:msg
    endwhile
endfunction

function! OnPsqlExit(channel, code)
    execute('bd')
    execute('below sp /tmp/sql.out.csv')
    echomsg 'time spent: ' . reltimestr(reltime(t:start_time)) . 's'
endfunction

function! PostgresRunToCSV()
    let t:start_time = reltime()

    let [lnum1, col1] = getpos("'<")[1:2]
    let [lnum2, col2] = getpos("'>")[1:2]
    let lines = getline(lnum1, lnum2)
    let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][col1 - 1:]

    " let sql = join(lines, "\n")
    let sql = join(lines, " ")

    let cmd = 'date && echo "Run:" && echo '
    for line in lines
        let cmd = cmd . '&& echo "' . escape(line, '"\') . '" '
    endfor

    let cmd = cmd . printf("&& psql \"%s\" -P pager=off -A -F\"\" -c \"%s\" > /tmp/sql.out.csv", s:meta, escape(sql, '"\'))

    call system('rm /tmp/sql.out.csv')
    call execute('set splitbelow')

    call term_start('zsh -c "' . escape(cmd, '"\'). '"', {
                \"out_cb": "OnPsqlStdOut",
                \"err_cb": "OnPsqlStdErr",
                \"close_cb": "OnPsqlClose",
                \"exit_cb": "OnPsqlExit",
                \})
                " \"term_rows": 10,
endfunction

" vmap <F5> <Esc>:w<CR>:<c-u>call PostgresRun()<CR>
" vmap <F6> <Esc>:w<CR>:<c-u>call PostgresRunToCSV()<CR>
" nmap <F5> <Esc>:w<CR>vip:call PostgresRun()<CR>
" nmap <F6> <Esc>:w<CR>vip:call PostgresRunToCSV()<CR>
