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
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
let mapleader=","               "Use , as leader
syntax on                       "turn on syntax highlighting

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" =============== Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/vundles.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

" ================ Turn Off Swap Files ============== 
set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

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

" Load custom plugin settings
so ~/.vim/settings.vim


" ===================================================
"
" TCP CUSTOMS
" This section consists of customisations written
" by my very own self WOW
"
"====================================================

" Typography and text flow
if has('gui_running')
  set guifont=InconsolataTCP:h17
endif
set wrap
set nolist
set linebreak

" Moving through wrapped lines with CMD key:
vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^

" Disable graphical tabs
set guioptions=gm

" Insert a new line without dropping into insert mode with Enter
" (Shift Enter for previous line):
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Solarized Colorscheme Config
if has("gui_running")
  colorscheme solarized
  let g:solarized_contrast="normal"    "default value is normal
  let g:solarized_bold=1               "use bold
  syntax enable                        "I don’t think this works…
  set background=dark
  let g:solarized_menu=0               "Disable Solarized menu
endif

" Bright as fuck visual line
hi Visual guifg=#D33682 guibg=#cccccc

" Highlight search matches
set hlsearch

" Reduce delay of ESC switching out of Insert mode
set timeoutlen=1000 ttimeoutlen=0
