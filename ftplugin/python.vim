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

setlocal foldtext=NeatFoldText()

let python_highlight_all = 1

" beautiful python code
" nnoremap <Leader>= :0,$!yapf<CR>

" rearange python import
" nnoremap <Leader>i :!isort %<CR><CR>

