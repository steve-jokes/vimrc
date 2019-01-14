" You Complete Me

set completeopt=longest,menu   " 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)

" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

" autocmd BufWritePost *.py call Flake8()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe  代码自动补全
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" youcompleteme  默认tab and shift-tab 和自动补全冲突
let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_previous_completion=['<c-p>']
" let g:ycm_key_list_select_completion = ['<Down>']
" let g:ycm_key_list_previous_completion = ['<Up>']
" let g:ycm_server_python_interpreter='/usr/local/Cellar/python3/3.7.0/Frameworks/Python.framework/Versions/3.7/bin/python3.7'
" let g:ycm_server_python_interpreter='/usr/bin/python2'

let g:ycm_max_diagnostics_to_display = 200 " 太小会引起无法显示

let g:ycm_confirm_extra_conf=1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1

let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全

" 语言关键字补全
let g:ycm_seed_identifiers_with_syntax=1

let g:ycm_collect_identifiers_from_tags_files =1
"
" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2

let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" set splitbelow " show preivew below

" 引入，可以补全系统，以及python的第三方包 针对新老版本YCM做了兼容
" new version
" if !empty(glob("~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"))
    " let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
" endif

" ts
" if !exists("g:ycm_semantic_triggers")
"     let g:ycm_semantic_triggers = {}
" endif
" let g:ycm_semantic_triggers['typescript'] = ['.']

" mapping
nmap <leader>gd :YcmDiags<CR>
" 跳转到申明处
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
" 跳转到定义处
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
" 左右横跳
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
" Apply YCM FixIt
map <leader>ff :YcmCompleter FixIt<CR>


" let g:ycm_python_binary_path = '/usr/bin/python3'

" fix conflict with syntastic
let g:syntastic_java_checkers = []

" 黑名单,不启用
let g:ycm_filetype_blacklist = { 'tagbar' : 1, 'gitcommit' : 1, }

