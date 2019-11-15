" Plugin Conque GDB Configuration

let g:ConqueTerm_Color = 2
let g:ConqueTerm_CloseOnEnd = 0
let g:ConqueTerm_StartMessages = 0

function DebugSession()
    silent make -o vimgdb -gcflags "-N -l" -ldflags=-compressdwarf=false
    redraw!
    if (filereadable("vimgdb"))
        ConqueGdb vimgdb
    else
        echom "Couldn't find debug file"
    endif
endfunction

function DebugSessionCleanup(term)
    if (filereadable("vimgdb"))
        let ds=delete("vimgdb")
    endif
endfunction

call conque_term#register_function("after_close", "DebugSessionCleanup")

" hot key memory when debugging:
" 
"<leader>r : Run
"<leader>c : Continue
"<leader>n : Execute next line
"<leader>p : Print variable under cursor
"<leader>b : Toggle breakpoint
"
"p variablename  : Print variable
"bt              : Print backtrace
"info goroutines : Go routine list
"goroutine n bt  : Print backtrace for a specific goroutine
"b main.go:5     : Add a breakpoint to main.go on line 5
"d 8             : Delete breakpoint number 8
"quit            : End debug session
