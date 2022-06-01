"ale

Plug 'dense-analysis/ale'

let g:ale_linters = {'c': ['cc','cppcheck'],'php': ['php'],'go': ['golangci-lint']}
let g:ale_fixers = {'php':['php_cs_fixer'],'go':['golangci-lint']}

" 'go': ['gofmt', 'golint'],

let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''
"let g:ale_go_golangci_lint_options = '--enable-all'
let g:ale_go_golangci_lint_package = 1
let g:ale_list_window_size=5

"错误列表
let g:ale_open_list = 1
"let g:ale_keep_list_window_open = 1
"let g:ale_list_vertical = 1

let g:ale_set_loclist = 0
"let g:ale_set_quickfix = 1
let g:airline#extensions#ale#enabled = 1

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

"let g:ale_sign_error = "\ue009\ue009"
"hi! clear SpellBad
"hi! clear SpellCap
"hi! clear SpellRare
"hi! SpellBad gui=undercurl guisp=red
"hi! SpellCap gui=undercurl guisp=blue
"hi! SpellRare gui=undercurl guisp=magenta
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰']
