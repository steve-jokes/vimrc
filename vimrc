" auto set up vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" list plugins

call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'                                                                   " move buffer to center to get a mind flow
Plug 'junegunn/limelight.vim'                                                              " TODO take a look at this
Plug 'junegunn/vim-easy-align'                                                             " quick align
Plug 'altercation/vim-colors-solarized'                                                    " color scheme
Plug 'scrooloose/nerdcommenter'                                                            " easy to comment on code
Plug 'scrooloose/nerdtree'                                                                 " file browser
Plug 'Xuyuanp/nerdtree-git-plugin'                                                         " nerdtree git plugin
Plug 'tpope/vim-fugitive'                                                                  " Git wrapper for commit
Plug 'airblade/vim-gitgutter'                                                              " Git wrapper for undo chunk
Plug 'kien/ctrlp.vim'                                                                      " <C-P> for file jump
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }                                         " golang tool set
Plug 'jlanzarotta/bufexplorer'                                                             " switch between buffers
Plug 'elzr/vim-json'                                                                       " json highlight
Plug 'vim-airline/vim-airline'                                                             " status line
Plug 'easymotion/vim-easymotion'                                                           " quick code jump
Plug 'yegappan/grep'                                                                       " could change into ripgrep
Plug 'iamcco/dict.vim'                                                                     " youdao dict plugin
Plug 'vim-syntastic/syntastic'                                                             " static syntax checking
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --clang-completer --java-completer' } " code complete
Plug 'ervandew/supertab'                                                                   " super tab for ins-completion
Plug 'mikelue/vim-maven-plugin'                                                            " maven
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }                              " auto PEP8
Plug 'hdima/python-syntax', { 'for': 'python' }                                            " python highlighting enhance TODO test diff
Plug 'godlygeek/tabular'                                                                   " required by vim-markdown
Plug 'plasticboy/vim-markdown'                                                             " markdown highlight
Plug 'rizzatti/dash.vim'                                                                   " quick search in Dash
Plug 'tenfyzhong/CompleteParameter.vim'                                                    " complete function parameter
Plug 'jiangmiao/auto-pairs'                                                                " Insert or delete brackets, parens, quotes in pair.
Plug 'tpope/vim-surround'                                                                  " quick modify surroundings
Plug 'vim-scripts/restore_view.vim'                                                        " comeback to file last open position
Plug 'majutsushi/tagbar'                                                                   " class outline viewer
Plug 'szymonmaszke/vimpyter'                                                               " jupyter format
call plug#end()

source ~/.vim/vimrc_basic.vim
source ~/.vim/vimrc_hotkey.vim

" plugin configurations
source ~/.vim/scripts/bufexplorer.vim
source ~/.vim/scripts/colors-solarized.vim
source ~/.vim/scripts/easy-align.vim
source ~/.vim/scripts/nerd-commenter.vim
source ~/.vim/scripts/nerd-tree.vim
source ~/.vim/scripts/git-gutter.vim
source ~/.vim/scripts/ctrl-p.vim
source ~/.vim/scripts/grep.vim
source ~/.vim/scripts/goyo.vim
source ~/.vim/scripts/youdao-dict.vim

source ~/.vim/scripts/syntastic.vim
source ~/.vim/scripts/yapf.vim
source ~/.vim/scripts/ycm.vim

source ~/.vim/scripts/tagbar.vim
source ~/.vim/scripts/restore-view.vim
source ~/.vim/scripts/functions.vim
