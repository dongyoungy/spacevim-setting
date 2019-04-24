"=============================================================================
" init.vim --- Entry file for neovim
" Copyright (c) 2016-2017 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================
" Put this file in: ~/.config/nvim/

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/main.vim'

let g:spacevim_autocomplete_method="deoplete"
let g:jedi#completions_enabled=1
"Use deoplete.
let g:deoplete#enable_at_startup=1
let g:python3_host_prog="/usr/bin/python3.6"
let g:neoformat_enabled_python = ['autopep8']
set timeoutlen=250
let g:neomake_python_maker = {
    \ 'exe': 'python3.6',
    \ }
let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }

