" MarkDown specific settings.

function InsertTime()
    call append(line('.'),"### " . strftime("%a %d %h %R") . " (h)")
endf

nmap <F5> <Esc>:w<CR>:call OpenFile()<CR>
