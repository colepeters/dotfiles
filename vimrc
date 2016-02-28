" ===================================================
"
" THE BASICS
" Much of this section has been borrowed from YADR:
" https://github.com/skwp/dotfiles
"
"====================================================

set nocompatible                "Use Vim settings instead of vi settings
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
let mapleader=","               "Use , as leader

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" ================ Turn Off Swap Files ============== 
set noswapfile
set nobackup
set nowb

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" ================ Folds ============================
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================
set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ========================================
"
" TCP CUSTOMS
" This section consists of customisations
" written by my very own self WOW
"
"=========================================

" ================ Appearance ============
set wrap                                 " ---------------------------------
set nolist                               " Word wrap without linebreaks
set linebreak                            " ---------------------------------
set noshowmode                           " Don’t show mode - we use Lightline for that
set guioptions=gm                        " Disable graphical tabs
set hlsearch                             " Highlight search matches
let g:enable_bold_font = 1               " Enable bold fonts
set background=light                     " Light BG

" =============== Syntax =================
syntax enable                            " Syntax highlighting
let g:jsx_ext_required = 0               " Allow JSX in normal JS files

" =============== Movement ===============
nmap <CR> o<Esc>                         " CR in normal mode for newline without insert
nmap <S-Enter> O<Esc>                    " Shift-CR for newline before current line w/out insert
nnoremap <C-J> <C-W><C-J>                " ----------------------------------
nnoremap <C-K> <C-W><C-K>                " Navigate splits 
nnoremap <C-L> <C-W><C-L>                " with CTRL-j/k/l/h
nnoremap <C-H> <C-W><C-H>                " ----------------------------------

" =============== Behaviour ==============
set timeoutlen=1000 ttimeoutlen=0        " Reduce delay of ESC switching out of Insert mode (terminal Vim)

" If you visually select something and hit paste
" that thing gets yanked into your buffer. This
" generally is annoying when you're copying one item
" and repeatedly pasting it. This changes the paste
" command in visual mode so that it doesn't overwrite
" whatever is in your paste buffer.
"
vnoremap p "_dP
