" Go specific settings

setlocal nolist
setlocal foldmethod=syntax
setlocal foldlevel =0

" prevent auto fold when go files are saved
let g:go_fmt_experimental = 1
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

function! MyGoRun()
    let cur_file = expand('%')
    " execute('!' . 'vgo run ./' . cur_file)
    execute('below terminal zsh -c "GOPRIVATE=gitlab.upltv.com/* go run ./' . cur_file. '"')
    execute(':set termwinsize=10*1000')
    " execute('GoRun' . ' ./' . cur_file)
endfunction

" nmap <F5> <Esc>:w<CR>:GoRun<CR>
nmap <F5> <Esc>:w<CR>:call MyGoRun()<CR>
nmap <F6> <Esc>:w<CR>:GoDebugStart<CR>

nnoremap <silent><leader>r :GoDebugRestart<CR>
nnoremap <silent><leader>e :GoDebugStop<CR>

nnoremap <silent><leader>b :GoDebugBreakpoint<CR>
nnoremap <silent><leader>c :GoDebugContinue<CR>
nnoremap <silent><leader>n :GoDebugNext<CR>
" nnoremap <silent><leader>p :GoDebugPrint<CR>
nnoremap <silent><leader>p :call go#debug#Print(expand('<cword>'))<CR>

nnoremap <silent><leader>s :GoDebugSet<Space>
nnoremap <silent><leader>i :GoDebugStep<CR>
nnoremap <silent><leader>o :GoDebugStepOut<CR>

nnoremap <buffer> <leader>gd :GoDef<CR>
nnoremap <buffer> <leader>gi :GoInfo<CR>

autocmd Filetype go nmap <buffer> <silent> <C-l> :w<CR>
