" Vim filetype plugin for atopile
" Language:     atopile
" Maintainer:   Marko Vejnovic
" Last Change:  2025-08-09
" Version:      0.1

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

" Save the compatibility options and set compatible mode
let s:cpo_save = &cpo
set cpo&vim

" Set Python-like indentation behavior
setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal tabstop=4

" Enable automatic indentation
setlocal autoindent

" Set comment format for atopile (Python-style)
setlocal commentstring=#\ %s
setlocal comments=b:#

" Match Python's format options
setlocal formatoptions-=t formatoptions+=croql

" Restore the compatibility options
let &cpo = s:cpo_save
unlet s:cpo_save