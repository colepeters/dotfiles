let vimsettings = '~/.vim/settings'
let uname = system("uname -s")

" Load our plugin settings
" Method borrowed from YADR
for fpath in split(globpath(vimsettings, '*.vim'), '\n')
  exe 'source' fpath
endfor
