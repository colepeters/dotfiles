" Open the loclist/quickfix list when entries are produced,
" and preserve cursor position
let g:neomake_open_list = 2

" Customise error and warning signs
let g:neomake_error_sign = {
      \ 'text': 'E>',
      \ 'texthl': 'ErrorMsg',
      \ }

let g:neomake_warning_sign = {
      \ 'text': 'W>',
      \ 'texthl': 'ErrorMsg',
      \ }

" load local eslint in the project root
" modified from https://github.com/mtscout6/syntastic-local-eslint.vim
" NB: THIS MEANS YOUR CWD MUST BE THE PROJECT ROOT
let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let g:neomake_javascript_eslint_exe = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

" Use StandardJS if .eslintrc not found in project directory;
" otherwise, use ESLint
if findfile('.eslintrc', '.;') ==# '' && executable('standard')
  let g:neomake_javascript_enabled_makers = ['standard']
else
  let g:neomake_javascript_enabled_makers = ['eslint']
endif

" Run Neomake on :w
autocmd! BufWritePost * Neomake
