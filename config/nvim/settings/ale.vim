let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'jsx': ['eslint'],
      \ }

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_open_list = 1

" Close list when buffer closed
augroup CloseLoclistWindowGroup
  autocmd!
  autocmd QuitPre * if empty(&buftype) | lclose | endif
augroup END
