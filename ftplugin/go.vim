" Go specific settings

setlocal nolist
setlocal foldmethod =syntax
setlocal foldlevel  =0

" prevent auto fold when go files are saved
let g:go_fmt_experimental = 1

nmap <F5> <Esc>:w<CR>:GoRun<CR>
nmap <F6> <Esc>:w<CR>:GoDebugStart<CR>

nnoremap <silent><leader>r :GoDebugRestart<CR>
nnoremap <silent><leader>e :GoDebugStop<CR>

nnoremap <silent><leader>b :GoDebugBreakpoint<CR>
nnoremap <silent><leader>c :GoDebugContinue<CR>
nnoremap <silent><leader>n :GoDebugNext<CR>
nnoremap <silent><leader>p :GoDebugPrint

nnoremap <silent><leader>s :GoDebugSet
nnoremap <silent><leader>i :GoDebugStep<CR>
nnoremap <silent><leader>o :GoDebugStepOut<CR>
