let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [], [], [ 'fileformat', 'filetype', 'lineinfo' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&readonly?"✕":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

let g:lightline.mode_map = {
  \ 'n' : 'N',
  \ 'i' : 'I',
  \ 'v' : 'v',
  \ 'V' : 'V',
  \ 'c' : 'C',
  \ "\<C-v>" : 'B'
  \ }

" Use status bar even with single buffer
set laststatus=2
