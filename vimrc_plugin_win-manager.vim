" Win manager

let g:winManagerWindowLayout='NERDTree'
let g:winManagerWidth=40
let g:NERDTree_title = "[NERDTree]"

function! NERDTree_Start()
    exe 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

" 自动退出 Win-manager
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree"))  | qa | endif
