" General Configuration for Vim
" Invoked after vimrc (by source)

syntax on
syntax enable

" Convenience

set encoding    =utf-8
set backspace   =2       " more powerful backspacing
set mouse       =a       " open mouse on macos
set clipboard   =unnamed " use system clipboard
set autoindent           " same level indent
set smartindent          " next level indent
set exrc                 " enable project specified vimrc

autocmd WinEnter * if &previewwindow | setlocal wrap linebreak nolist | endif " wrap on preview

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

" Folding
set foldenable
set foldmethod =syntax
set foldlevel  =1

hi Folded term=bold cterm=None

function! NeatFoldText()
    let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
    let lines_count = v:foldend - v:foldstart + 1
    let lines_count_text = printf("%9s", lines_count . ' lines')
    let foldchar = matchstr(&fillchars, 'fold:\zs.')
    let foldtextstart = strpart('+' . repeat(' ', (v:foldlevel-1)*4 - 2) . line, 0, (winwidth(0)*2)/3)
    let foldtextend = lines_count_text . repeat(' ', 5)
    let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
    return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction

set foldtext=NeatFoldText()

" SSH

set ttyfast " TODO

" Functions

set spell                " spell check
set spelllang =en_us,cjk " spell check

" Tab

set wildmenu                  " open table completer
set wildmode    =longest,full " open table completer
set tabstop     =4            " ts: how many of spaces in a <Tab>
set shiftwidth  =4            " sw: how many spaces to use for indent
set softtabstop =4            " sts: ts, but mimic with space
set expandtab                 " use some spaces to insert <Tab>.

" Configuration gui for vim
" set guicursor  =a:block-blinkon1000 "
" set guioptions = "
