let s:save_cpo = &cpo
set cpo&vim

function! GoTemplete#Snippet()
endfunction

function! s:Filetype() abort
    if expand('%:e') ==# 'go'
        return expand('%')
    else
        return ''
    endif
endfunction "Filetype
