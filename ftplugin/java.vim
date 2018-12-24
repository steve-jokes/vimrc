" Java specific settings.

function! RunJavaClass()
    let cur_file = expand('%:p:r')
    let rel_path = substitute(cur_file, '.*/src/main/java/', '', 'g')
    let class_name = substitute(rel_path, '/', '.', 'g')
    execute('!' . 'mvn compile exec:java -Dexec.mainClass=' . class_name)
endfunction
map <F5> <Esc>:w<CR>:call RunJavaClass()<CR>

map <Leader><Leader>c <Esc>:w<CR>:!mvn clean<CR>
