" Vim indent file for atopile
" Language:     atopile
" Maintainer:   Marko Vejnovic
" Last Change:  2025-08-09
" Version:      0.1

if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal indentexpr=GetAtopileIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,<:>,=elif,=except

" Only define the function once
if exists("*GetAtopileIndent")
  finish
endif

let s:keepcpo= &cpo
set cpo&vim

function! GetAtopileIndent()
  " Find a non-blank line above the current line
  let lnum = prevnonblank(v:lnum - 1)

  " At the start of the file use zero indent
  if lnum == 0
    return 0
  endif

  let ind = indent(lnum)
  let prevline = getline(lnum)
  let curline = getline(v:lnum)

  " If the previous line ends with a colon, increase indent
  " This handles module, component, interface, if, for, etc.
  if prevline =~ ':\s*$'
    let ind = ind + shiftwidth()
  endif

  " If the current line starts with a closing bracket, decrease indent
  if curline =~ '^\s*[\}\]\)]'
    let ind = ind - shiftwidth()
  endif

  " Handle 'pass' keyword - it should be at the same level as the block
  if curline =~ '^\s*pass\>'
    " Don't change indentation for pass
  endif

  return ind
endfunction

let &cpo = s:keepcpo
unlet s:keepcpo