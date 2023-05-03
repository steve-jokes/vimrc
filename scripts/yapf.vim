" YAPF
autocmd Filetype python nmap <buffer> <silent><C-l> :YAPF<CR>:w<CR>
autocmd Filetype python vmap <buffer> <silent><C-l> :call yapf#YAPF()<cr>
