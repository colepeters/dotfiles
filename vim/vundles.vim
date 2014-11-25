" ========================================
" Vim plugin configuration
" ========================================

" Filetype off is required by vundle
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/vundles/ "IMPORTANT: This is where our vundle lists are stored
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Bundle 'gmarik/Vundle.vim'

" CALL THE VUNDLES
" This structure and much of the initial
" plugin selection also borrowed from YADR
runtime appearance.vundle
runtime git.vundle
runtime languages.vundle
runtime project.vundle
runtime search.vundle
runtime vim-improvements.vundle

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
