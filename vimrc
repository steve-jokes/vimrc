set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'The-NERD-Commenter'
Plugin 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'udalov/kotlin-vim'
Plugin 'vim-scripts/Conque-GDB'
Plugin 'bufexplorer.zip'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'Lokaltog/vim-powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tagbar'
Plugin 'ervandew/supertab'
Plugin 'EasyMotion'
Plugin 'LargeFile'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tenfyzhong/CompleteParameter.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'mileszs/ack.vim'
Plugin 'yegappan/grep'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
" Plugin 'python_fold'
Plugin 'hdima/python-syntax'
Plugin 'tomlion/vim-solidity'
Plugin 'tell-k/vim-autopep8'
Plugin 'ybian/smartim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'rizzatti/dash.vim'

Plugin 'HerringtonDarkholme/yats'
Plugin 'iamcco/dict.vim'
Plugin 'restore_view.vim'
Plugin 'chr4/nginx.vim'

set runtimepath+=$GOROOT/misc/vim

call vundle#end()            " required
filetype plugin indent on    " required
" ============= vundle end =====================

source ~/.vim/vimrc_basic.vim
source ~/.vim/vimrc_hotkey.vim
source ~/.vim/vimrc_plugin_youdao-dict.vim
source ~/.vim/vimrc_plugin_git-gutter.vim
source ~/.vim/vimrc_plugin_nerd-tree.vim
source ~/.vim/vimrc_plugin_nerd-commenter.vim
source ~/.vim/vimrc_plugin_ctrl-p.vim
source ~/.vim/vimrc_plugin_tagbar.vim
" source ~/.vim/vimrc_plugin_win-manager.vim
source ~/.vim/vimrc_plugin_ycm.vim
source ~/.vim/vimrc_plugin_complete-parameter.vim
source ~/.vim/vimrc_plugin_restore-view.vim
source ~/.vim/vimrc_plugin_autopep8.vim
" source ~/.vim/vimrc_plugin_conque-gdb.vim

" open layout
" autocmd VimEnter * TagbarToggle
autocmd VimEnter * NERDTreeToggle

" 自动退出 Win-manager
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" set secure " prevent autocmd
