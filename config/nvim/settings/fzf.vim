" Keymappings for fzf.vim commands
" https://github.com/junegunn/fzf.vim
" CTRL-J/K to navigate results
" CTRL-T to open selected item in new tab

" Find files
nnoremap <leader>ff :FZF<CR>

" Find git-tracked files
nnoremap <leader>fg :GitFiles<CR>

" Find open buffers
nnoremap <leader>fb :Buffers<CR>

" Find in lines of open buffers
nnoremap <leader>fl :Lines<CR>

" If buffer open in existing window, jump to it if possible
let g:fzf_buffers_jump = 1

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
