" Vim Syntax
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checker_args='--ignore=E501'
let g:syntastic_python_flake8_post_args='--ignore=E501'

let g:syntastic_cs_mcs_args = '-unsafe -langversion:Experimental'
