" Vim syntax file
" Language: flow
" Maintainer: ianzhou
"
" add next line to .vimrc
" au BufRead,BufNewFile *.flow set filetype=flow

syn match fFunc "\w\+\s*(\@="
syn match fComment +\/\/.*\w*$+
syn match fMComment +\/\*\_.\{-}\*\/$+

hi def link fFunc  Function
hi def link fComment    Comment
hi def link fMComment    Comment
