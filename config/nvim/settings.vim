" KEYMAPS ------------------------------------------------------------
" Borrowed from the likes of YADR, @mrmrs, and myself

" Clear current search highlight by double tapping /
nmap <silent> // :nohlsearch<CR>

" Make Y behave like C and D
nnoremap Y y$

" 0 goes to first character in line; ^ goes to start of line
nnoremap 0 ^
nnoremap ^ 0

" SPLITS
" vv for vertical split, ss for horizontal split
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" Navigate splits with CTRL-hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tab Navigation
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tn  :tabnew<CR>

" END KEYMAPS --------------------------------------------------------

" Call all files in settings/
" Borrowed from YADR
let nvimsettings = '~/.config/nvim/settings'
let uname = system("uname -s")
for fpath in split(globpath(nvimsettings, '*.vim'), '\n')
  exe 'source' fpath
endfor
