"nerdtree

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"autocmd vimenter * NERDTree        " 打开vim，自动开启nerd tree
map <F3> :NERDTreeMirror<CR>       " 通过F3 打开/关闭 nerd tree
map <F3> :NERDTreeToggle<CR>
let NERDTreeHijackNetrw=1