" atopile.vim - Main plugin file
" This file ensures the plugin loads properly in Neovim/Packer

if exists('g:loaded_atopile')
  finish
endif
let g:loaded_atopile = 1

" Ensure ftdetect is loaded
runtime! ftdetect/atopile.vim