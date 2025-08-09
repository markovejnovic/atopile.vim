" Vim syntax file for atopile
" Language:     atopile
" Maintainer:   Marko Vejnovic
" Last Change:  2025-08-09
" Version:      0.1

if exists("b:current_syntax")
  finish
endif

" Pragma statements (higher priority than comments)
syn match atoPragma "^\s*#pragma\>.*$"

" Comments (assuming Python-style) - excluding pragma
syn match atoComment "^\s*#\(pragma\)\@!.*$" contains=atoTodo
syn match atoComment "#\s.*$" contains=atoTodo
syn keyword atoTodo TODO FIXME XXX NOTE contained

" String literals
syn region atoString start=+"+ skip=+\\"+ end=+"+
syn region atoString start=+'+ skip=+\\'+ end=+'+
syn region atoTripleString start=+"""+ end=+"""+
syn region atoTripleString start=+'''+ end=+'''+

" Keywords
syn keyword atoKeyword module component interface signal
syn keyword atoKeyword new from import assert within pass

" Built-in types
syn keyword atoType Electrical ElectricSignal ElectricLogic
syn keyword atoType Power Ground Input Output

" Operators
syn match atoOperator "->"
syn match atoOperator "\~"
syn match atoOperator "="
syn match atoOperator "<"
syn match atoOperator ">"
syn match atoOperator "±"
syn match atoOperator "+/-"

" Numbers with units
syn match atoNumber "\<\d\+\>"
syn match atoNumber "\<\d\+\.\d*\>"
syn match atoNumber "\<\d*\.\d\+\>"
syn match atoNumberUnit "\<\d\+\(\.\d*\)\?\s*[kMGmunp]\?\(Ω\|ohm\|F\|H\|V\|A\|W\|Hz\|°C\)\>"
syn match atoNumberUnit "\<\d*\.\d\+\s*[kMGmunp]\?\(Ω\|ohm\|F\|H\|V\|A\|W\|Hz\|°C\)\>"

" Tolerance notation
syn match atoTolerance "±\s*\d\+\(\.\d*\)\?%\?"
syn match atoTolerance "+/-\s*\d\+\(\.\d*\)\?%\?"
syn match atoTolerance "to\s\+\d\+\(\.\d*\)\?\s*[kMGmunp]\?\(Ω\|ohm\|F\|H\|V\|A\|W\|Hz\)\?"

" Identifiers
syn match atoIdentifier "\<[a-zA-Z_][a-zA-Z0-9_]*\>"

" Function/module definitions
syn match atoFunction "\<\(module\|component\|interface\)\s\+\zs[a-zA-Z_][a-zA-Z0-9_]*"

" Import statements
syn region atoImport start="^from\s" end="$" contains=atoKeyword,atoString
syn region atoImport start="^import\s" end="$" contains=atoKeyword,atoString

" Define the default highlighting
hi def link atoPragma         PreProc
hi def link atoComment        Comment
hi def link atoTodo           Todo
hi def link atoString         String
hi def link atoTripleString   String
hi def link atoKeyword        Keyword
hi def link atoType           Type
hi def link atoOperator       Operator
hi def link atoNumber         Number
hi def link atoNumberUnit     Number
hi def link atoTolerance      Special
hi def link atoIdentifier     Identifier
hi def link atoFunction       Function
hi def link atoImport         Include

let b:current_syntax = "atopile"
