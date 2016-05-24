function! statusline#update()
  for nr in range(1, winnr('$'))
    if bufname(winbufnr(nr)) =~ 'NERD_tree'
      call setwinvar(nr, '&statusline', g:NERDTreeStatusline)
    else
      call setwinvar(nr, '&statusline', statusline#line(winnr() == nr))
    end
  endfo
endfunction

function! statusline#line(active)
  if a:active
    return
          \   '%{statusline#mode("N")}%*'
          \ . '%{statusline#mode("V")}%*'
          \ . '%{statusline#mode("I")}%*'
          \ . '%{statusline#mode("R")}%*'
          \ . '%{statusline#mode("T")}%*'
          \ . ' %n %*'
          \ . '%(%<%{statusline#filename(!&modified)}%*%)'
          \ . '%(%<%{statusline#filename(&modified)}%*%)'
          \ . '%='
          \ . '%{statusline#neomake("W")}%*'
          \ . '%{statusline#neomake("E")}%*'
          \ . ' %c,%l/%L'
          \ . ' %{&ft} %{&ff} %{&fenc!=""?&fenc:&enc} '
  else
    return
          \   ' %n '
          \ . ' %m%<%f '
          \ . '%='
          \ . ' %c,%l/%L '
          \ . ' %{&ft} %{&ff} %{&fenc!=""?&fenc:&enc} '
  end
endfunction

function! statusline#filename(modified)
  if a:modified
    let fname = expand('%')
    return printf(' %s ', len(fname) ? fname : '[No Name]')
  else
    return ''
  end
endfunction

function! statusline#mode(base)
  if a:base == s:currentModeKey()
    return printf('  %s ', a:base)
  else
    return ''
  end
endfunction

function! s:currentModeKey()
  return get({
        \ 'n': 'N',
        \ 'v': 'V',
        \ 'V': 'V',
        \ '': 'V',
        \ 'i': 'I',
        \ 'R': 'R',
        \ 'Rv': 'R',
        \ 't': 'T',
        \ }, mode(), '-')
endfunction

function! statusline#neomake(scope)
  if has('nvim')
    let loclist = filter(getloclist(0), "v:val.type == '".a:scope."'")

    if empty(loclist)
      return ""
    else
      let first_sign_line = loclist[0].lnum
      let sign_count = len(loclist)

      return printf("  %s: %s(%s) ", a:scope, first_sign_line, sign_count)
    end
  else
    return ''
  end
endfunction
