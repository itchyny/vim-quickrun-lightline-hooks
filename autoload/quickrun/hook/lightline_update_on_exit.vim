let s:save_cpo = &cpo
set cpo&vim

let s:hook = {
      \ 'name' : 'lightline',
      \ 'kind' : 'hook',
      \ 'is_empty_data' : 1
      \}

function! s:hook.on_exit(...)
  if exists('*lightline#update')
    call lightline#update()
  endif
endfunction

function! quickrun#hook#lightline_update_on_exit#new()
  return deepcopy(s:hook)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
