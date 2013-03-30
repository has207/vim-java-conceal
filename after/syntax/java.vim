" Needs conceal from vim 7.3
if !has('conceal')
  finish
endif

" Unset first (in case some are removed and the file is reloaded)
silent! syntax clear javaOpenBrace
silent! syntax clear javaClosingBrace
silent! syntax clear javaSemicolon

" Define syntax groups
syntax match javaOpenBrace /\ {$/ skipwhite conceal cchar=:
syntax match javaClosingBrace /\ \ }/ conceal
syntax match javaSemicolon /;$/ conceal

" Apply conceal
hi! link Conceal javaOpenBrace
hi! link Conceal javaClosingBrace
hi! link Conceal javaSemicolon

" Hide concealed text and replace with cchar
set conceallevel=2
