" VIM-PLUG (plugins)
call plug#begin('~/.nvim/plugged')
Plug 'benekastah/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'AlxHnr/clear_colors'
Plug 'kien/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-fugitive'
Plug 'rking/ag.vim'
call plug#end()

" APPEARANCE
" :let $NVIM_TUI_ENABLE_TRUE_COLOR=1	" Only works with iTerm nightlies
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1	" Cursor is pipe in Insert, block in Normal
syntax enable				" Syntax highlighting
set background=dark                     " Dark background
colorscheme clear_colors_dark           " Colorscheme
set number				" Use line numbers
set ruler                               " Show line/col number in status bar
set hlsearch                            " Highlight search results
set wrap                                " -------------------------------------
set nolist                              " Word wrap without linebreaks
set linebreak                           " -------------------------------------
nnoremap <C-J> <C-W><C-J>               " ----------------------------------
nnoremap <C-K> <C-W><C-K>               " Navigate splits
nnoremap <C-L> <C-W><C-L>               " with CTRL-j/k/l/h
nnoremap <C-H> <C-W><C-H>               " ----------------------------------

" INDENTATION
set autoindent
set copyindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set expandtab

" VARIOUS FUNCTIONALITY
filetype on                             " Detect filetype
filetype indent on                      " Filetype-specific indenting
filetype plugin on                      " Filtype-specific plugins
let mapleader=','                       " Use comma as leader
set scrolloff=8				" Starting scrolling from 8 lines of edge
set backspace=indent,eol,start		" Backspace over these things
set history=1000			" Lots of cmd history
set undolevels=1000			" Lots of undo history, too
set visualbell                          " Don’t you beep at me
set noerrorbells                        " Don’t you beep at me at all!
set autoread                            " Auto read files when changed on disk
set laststatus=2                        " Always show the status bar

" CUSTOM PLUGIN SETTINGS
so ~/.nvim/settings.vim
