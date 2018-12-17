set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'The-NERD-Commenter'
Plugin 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
" Plugin 'jodosha/vim-godebug'
Plugin 'winmanager'
Plugin 'bufexplorer.zip'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'Lokaltog/vim-powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tagbar'
Plugin 'SuperTab'
Plugin 'EasyMotion'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tenfyzhong/CompleteParameter.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'mileszs/ack.vim'
Plugin 'yegappan/grep'
Plugin 'wakatime/vim-wakatime'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'python_fold'
Plugin 'hdima/python-syntax'
Plugin 'tomlion/vim-solidity'
Plugin 'ybian/smartim'
Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'HerringtonDarkholme/yats'
Plugin 'iamcco/dict.vim'


set runtimepath+=$GOROOT/misc/vim

call vundle#end()            " required
filetype plugin indent on    " required
" ============= vundle end =====================

source ~/.vim/vimrc_basic.vim
source ~/.vim/vimrc_hotkey.vim
source ~/.vim/vimrc_plugin_youdao-dict.vim
source ~/.vim/vimrc_plugin_nerd-tree.vim
source ~/.vim/vimrc_plugin_nerd-commenter.vim
source ~/.vim/vimrc_plugin_ctrl-p.vim
source ~/.vim/vimrc_plugin_tagbar.vim
source ~/.vim/vimrc_plugin_win-manager.vim
source ~/.vim/vimrc_plugin_ycm.vim

" open tagbar and wmtoggle
autocmd VimEnter * WMToggle
autocmd VimEnter * TagbarToggle

