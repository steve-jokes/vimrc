" Vim specific settings

setlocal foldmethod =expr
setlocal foldexpr   =getline(v:lnum)=~'^[\s\ ]*\"' " fold comments, (comments start with ")

nmap <F5> <Esc>:w<CR>:source %<CR>

