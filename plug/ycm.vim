"YouCompleteMe

Plug 'ycm-core/YouCompleteMe'

"错误信息
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
let g:ycm_auto_trigger=1
let g:ycm_add_preview_to_completeopt = 0

noremap <c-z> <NOP>
"自动补全触发
let g:ycm_semantic_triggers =  {
           \ 'c,cpp,python,java,go,php,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }

"自动补全窗口配色
highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey
highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black

"文件类型白名单
let g:ycm_filetype_whitelist = { 
                        \ "c":1,
                        \ "cpp":1, 
                        \ "objc":1,
                        \ "php":1,
                        \ "sh":1,
                        \ "zsh":1,
                        \ "zimbu":1,
                        \ "go":1,
                        \ }
let g:ycm_cache_omnifunc=0
