" Python specific settings.

setlocal foldmethod =indent

setlocal foldlevel  =1

hi Folded term=bold cterm=None

function! NeatFoldText()
    let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
    let lines_count = v:foldend - v:foldstart + 1
    let lines_count_text = printf("%9s", lines_count . ' lines')
    let foldchar = matchstr(&fillchars, 'fold:\zs.')
    let foldtextstart = strpart('+' . repeat(' ', (v:foldlevel-1)*4 - 2) . line, 0, (winwidth(0)*2)/3)
    let foldtextend = lines_count_text . repeat(' ', 5)
    let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
    return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction

setlocal foldtext=NeatFoldText

let python_highlight_all = 1

function! OnPythonRunExit(channel, code)
    " execute('bd')
endfunction

function! MyPythonRun()
    let cur_file = expand('%')
    call execute('set splitbelow')
    call term_start('zsh -c "./' . cur_file . '"', {
                \"exit_cb": "OnPythonRunExit",
                \})
endfunction

" nmap <F2> <Esc>:w<CR>:YcmCompleter RefactorRename <c-r>=substitute(expand("<cword>"), '\(\<\u\l\+\\|\l\+\)\(\u\)', '\l\1_\l\2', 'g')<cr>
nmap <F2> <Esc>:w<CR>:YcmCompleter RefactorRename <c-r>=substitute(expand("<cword>"), '\C\(\<\u[a-z0-9]\+\\|[a-z0-9]\+\)\(\u\)', '\l\1_\l\2', 'g')<cr>

nmap <F5> <Esc>:w<CR>:call MyPythonRun()<CR>

function! AddTitle()
    call setline(1,"#!/usr/bin/env python")
    call append(1,"# -*- coding: UTF-8 -*-")
    call append(2,"")
    call append(3,"if __name__ == '__main__':")
    call append(4,"    pass")
endf
