" VIM-PLUG (plugins)
call plug#begin('~/.config/nvim/plugged')
Plug 'benekastah/neomake'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'tpope/vim-fugitive'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'Valloric/ListToggle'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mustache/vim-mustache-handlebars'
Plug 'Valloric/YouCompleteMe'
Plug 'ternjs/tern_for_vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-grepper'
call plug#end()

" APPEARANCE
let $NVIM_TUI_ENABLE_TRUE_COLOR=1	" Only works with iTerm nightlies & beta
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1	" Cursor is pipe in Insert, block in Normal
syntax enable				" Syntax highlighting
colorscheme hybrid_material             " Colorscheme
set background=dark                     " Dark background
set number				" Use line numbers
set ruler                               " Show line/col number in status bar
set hlsearch                            " Highlight search results
set incsearch                           " Preview first search match as you type
set wrap                                " -------------------------------------
set nolist                              " Word wrap without linebreaks
set linebreak                           " -------------------------------------

" INDENTATION
set autoindent                          " Copy indent from current line when inserting new line
set smartindent                         " Like indenting but smarter
set smarttab                            " <Tab> inserts blanks according to shiftwidth
set shiftwidth=2                        " Number of spaces to shift via indent (> || <)
set softtabstop=2                       " Number of spaces inserted by <Tab>
set expandtab                           " Uses spaces, not tabs

" VARIOUS FUNCTIONALITY
filetype on                             " Detect filetype
filetype plugin on                      " Filetype-specific plugins
let mapleader=','                       " Use comma as leader
set encoding=utf-8                      " UTF-8 encoding by default
set scrolloff=8				" Starting scrolling from 8 lines of edge
set backspace=indent,eol,start		" Backspace over these things
set history=1000			" Lots of cmd history
set undolevels=1000			" Lots of undo history, too
set undoreload=1000                     " Undo lines on buffer reload
set visualbell                          " Don’t you beep at me
set noerrorbells                        " Don’t you beep at me at all!
set autoread                            " Auto read files when changed on disk
set noswapfile                          " Go away, swapfiles. No one likes yr style.
set hidden                              " Keep buffers loaded when abandoned
set laststatus=2                        " Always show the status bar
set clipboard+=unnamedplus              " Always use system clipboard instead of +/* registers
if has('persistent_undo')
  set undofile                          " Save undos after file closes
  set undodir=~/.config/nvim/undodir    " Save undos in undodir within nvim dir
endif

" LOAD SETTINGS
" (Keymaps and plugin settings)
so ~/.config/nvim/settings.vim
