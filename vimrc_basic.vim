" General Configuration for Vim
" Invoked after vimrc (by source)

syntax on
syntax enable

" Look and feel
colorscheme solarized

let g:solarized_termcolors =256
let g:solarized_termtrans  =1
set background             =dark " must invoke last, i don't know why

" Convenience

set encoding    =utf-8
set backspace   =2       " more powerful backspacing
set mouse       =a       " open mouse on macos
set clipboard   =unnamed " use system clipboard

set autoindent  " same level indent
set smartindent " next level indent

set foldenable
set foldmethod=marker
set foldmethod=syntax

let mapleader=";"


" Performance

set noesckeys        " no Esc keys
set nomodeline       " forbid modeline to save some time
set lazyredraw       " screen will not be redrawn while executing macros, registers
set updatetime =4000 " time of auto-save for crash-recovery

" Search

set hlsearch   " highlight search
set incsearch  " dynamic search
set ignorecase " search all case when lowercase used only in pattern
set smartcase  " search Uppercase when Uppercase appeared in pattern

" Look and feel

set ruler                  " position of cursor
set number                 " line number
set relativenumber         " relative line number
set list                   " show tab and empty space in the end
set listchars  =tab:>-     " set style
set listchars +=trail:-    " set style
set listchars +=precedes:< " set style
set listchars +=extends:>  " set style
set nowrap                 " show line in one line
set sidescroll =1          " smooth horizontal scroll
set cursorline             " indicate line
set cursorcolumn           " indicate column

" SSH

set ttyfast " TODO

" Functions

set spell                " spell check
set spelllang =en_us,cjk " spell check

" Tab

set wildmenu       " open table completer
set expandtab      " use some spaces to insert <Tab>.
set tabstop     =4 " ts: how many of spaces in a <Tab>
set shiftwidth  =4 " sw: how many spaces to use for indent
set softtabstop =4 " sts: ts, but mimic with space

" Configuration gui for vim
" set guicursor  =a:block-blinkon1000 "
" set guioptions = "
