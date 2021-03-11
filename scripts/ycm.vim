" " You Complete Me

set completeopt=longest,menu   " 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)

" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" "回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

" "上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe  代码自动补全
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" youcompleteme  默认tab and shift-tab 和自动补全冲突
let g:ycm_key_list_select_completion = ['<C-n>']
let g:ycm_key_list_previous_completion = ['<C-p>']

let g:SuperTabDefaultCompletionType = '<C-x><C-o>'
let g:ycm_server_python_interpreter='/usr/bin/python'
" let g:ycm_python_interpreter_path = '/usr/bin/python'
" let g:ycm_python_sys_path = []
" let g:ycm_extra_conf_vim_data = [
  " \  'g:ycm_python_interpreter_path',
  " \  'g:ycm_python_sys_path'
  " \]
let g:ycm_max_diagnostics_to_display = 200 " 太小会引起无法显示

let g:ycm_confirm_extra_conf=0
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

" set omnifunc=syntaxcomplete#Complete

set splitbelow " show preivew below

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
map <leader>? :YcmCompleter GetDoc<CR>

" fix conflict with syntastic
let g:syntastic_java_checkers = []

" 黑名单,不启用
let g:ycm_filetype_blacklist = { 'tagbar' : 1, 'gitcommit' : 1, 'go': 1}
