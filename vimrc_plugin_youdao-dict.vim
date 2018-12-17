" Plugin youdao dictionary Configuration

" nmap <silent> <Leader>d <Plug>DictSearch 
"--普通模式下，<Leader>d 即可翻译光标下的文本，并在命令行回显

" vmap <silent> <Leader>d <Plug>DictVSearch
"--可视化模式下，<Leader>d 即可翻译选中的文本，并在命令行回显

nmap <silent> <Leader>yd <Plug>DictWSearch
"--普通模式下，<Leader>w 即可翻译光标下的文本，并且在Dict新窗口显示

vmap <silent> <Leader>yd <Plug>DictWVSearch
"--可视化模式下，<Leader>w 即可翻译选中的文本，并且在Dict新窗口显示
