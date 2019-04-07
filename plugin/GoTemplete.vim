if exists('g:loaded_GoTemplete')
    finish
endif
let g:loaded_GoTemplete = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 GoTemplete call GoTemplete#Snippet()

let &cpo = s:save_cpo
unlet s:save_cpo
