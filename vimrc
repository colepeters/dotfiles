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
syntax enable                            " Syntax highlighting
set hlsearch                             " Highlight search matches
colorscheme PaperColorTCP                " https://github.com/colepeters/papercolor-theme
set background=light                     " Light BG
if has("gui_running")                    " Gui only options:
  set guifont=Nitti\ Light:h19           " I <3 Nitti; you can use InconsolataTCP (included in this repo)
endif                                    " ---------------------------------

" =============== Movement ===============
nmap <CR> o<Esc>                         " CR in normal mode for newline without insert
nmap <S-Enter> O<Esc>                    " Shift-CR for above, but before current line
nnoremap <C-J> <C-W><C-J>                " ----------------------------------
nnoremap <C-K> <C-W><C-K>                " Navigate splits 
nnoremap <C-L> <C-W><C-L>                " with CTRL-j/k/l/h
nnoremap <C-H> <C-W><C-H>                " ----------------------------------

" =============== Behaviour ==============
set timeoutlen=1000 ttimeoutlen=0        " Reduce delay of ESC switching out of Insert mode (terminal Vim)

" =============== Plugins ================
nnoremap <C-G> :GundoToggle<CR>          " Toggle Gundo graph view

" =============== Custom commands ========
" Pretty-print minifed JSON:
command! Jsontool %!python -m json.tool

