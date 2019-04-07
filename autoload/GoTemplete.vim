let s:save_cpo = &cpo
set cpo&vim

function! GoTemplete#Snippet() abort
    let filetype = s:Filetype()
    if strlen(filetype) == ''
        echomsg 'このファイルの拡張子はgoではありません: '. expand('%')
        return 0
    else
        call s:WriteTemplete()
    endif
endfunction

function! s:WriteTemplete()
    call append('0', 'package main')
    call append('2', 'import (')
    call append('3', ')')
    call append('4','')
    call append('5', 'func main () {')
    call append('6', '}')
endfunction

function! s:Filetype() abort
    if expand('%:e') ==# 'go'
        return expand('%')
    else
        return ''
    endif
endfunction "Filetype
