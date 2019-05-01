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
let g:deoplete#enable_at_startup = 1
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = "<C-K>"

" ncm2 settings
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=menuone,noselect,noinsert
set shortmess+=c
inoremap <c-c> <ESC>
" make it fast
let ncm2#popup_delay = 5
let ncm2#complete_length = [[1, 1]]
" Use new fuzzy based matches
let g:ncm2#matcher = 'substrfuzzy'

"let $NVIM_COC_LOG_LEVEL = 'debug'
let g:python3_host_prog="/usr/bin/python3.6"
let g:neoformat_enabled_python = ['autopep8']
let g:neomake_python_enable_makers = ['autopep8']
set timeoutlen=250
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

let g:ctrlp_user_command='find %s -type f'
let g:ctrlp_max_files = 5000
let g:ctrlp_max_depth = 3
