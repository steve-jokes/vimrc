set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree.git'
Plugin 'The-NERD-Commenter'
Plugin 'kien/ctrlp.vim'
Plugin 'taglist.vim'
Plugin 'winmanager'
Plugin 'bufexplorer.zip'
Plugin 'plasticboy/vim-markdown'
Plugin 'elzr/vim-json'
Plugin 'Lokaltog/vim-powerline.git' 
Plugin 'vim-colors-solarized' 
Bundle 'Valloric/YouCompleteMe'
Plugin 'Syntastic'
Plugin 'EasyMotion'
Plugin 'vim-jsbeautify'
Plugin 'pyflakes.vim'
Plugin 'javascript.vim'
Plugin 'python_fold'

call vundle#end()            " required
filetype plugin indent on    " required
" ============= vundle end =====================

set encoding=utf-8
" Configuration file for vim
set modelines=0		" CVE-2007-2438
set backspace=2		" more powerful backspacing

if has('mouse')
    set mouse=a
endif

set guifont=Menlo:h18

au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" Configuration ui for vim

set gcr=a:block-blinkon0
set go=
set incsearch
set ignorecase
set wildmenu
set ruler
set number
set cursorline
set hlsearch

" Configuration hotkey for vim
let mapleader=";"
nmap e0 $
nmap <Leader>w :w<CR>
nmap <Leader>x :x<CR>
vmap <Leader>y :w !pbcopy<CR><CR> 
nmap <Leader>p :r !pbpaste<CR><CR> 
xnoremap p pgvy
nmap <space> :
nmap <C-n> :nohl<CR>
nmap <Leader>h <C-w>h
nmap <Leader>j <C-w>j
nmap <Leader>k <C-w>k
nmap <Leader>l <C-w>l

" ========== javascript ==========
setlocal foldlevel=4
" 打开javascript折叠
let javaScript_fold=1 

" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1

" ========== python ==========
set filetype=python
au BufNewFile,BufRead *.py,*.pyw setf python
au BufRead *.py map <buffer> <F5> :w<CR>:!/usr/bin/env python % <CR>
au BufRead *.lua map <buffer> <F5> :w<CR>:!/usr/bin/env lua % <CR>
au BufRead *.js map <buffer> <F5> :w<CR>:!/usr/bin/env js % <CR>

set autoindent " same level indent
set smartindent " next level indent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" ========= json short cut ============
map <F4> <Esc>:%!python -m json.tool<CR>

" ========= ctags ============
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_Menu=1

set tags+="/Users/stevejokes/Qt5.3.2/5.3/clang_64/include/tags"

" ======== NERDTree  =======
let g:NERDTree_title="[NERD Tree]"

" ======= win manager ========
let g:AutoOpenWinManager = 1
let g:winManagerWindowLayout = "TagList,BufExplorer"
let g:winManagerWidth = 40
nmap <silent><F8> :WMToggle<CR>
:autocmd VimEnter * NERDTree
" ============================

syntax on
syntax enable
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

" split screen
:autocmd FileType python source ~/.vim/syntax/python.vim

" ========== js ================
