" 防止重复加载
if get(s:, 'loaded', 0) != 0
	finish
else
	let s:loaded = 1
endif

" Set vim conf repository home
let g:vimconf_home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" Load script command
command! -nargs=1 LoadScript exec 'so '. fnameescape(g:vimconf_home."/<args>")

" 将 vim-init 目录加入 runtimepath
exec 'set rtp+='.g:vimconf_home

" 将 ~/.vim 目录加入 runtimepath (有时候 vim 不会自动帮你加入）
set rtp+=~/.vim

LoadScript env.vim
LoadScript common.vim
LoadScript standard.vim
LoadScript conf.vim
LoadScript plug.vim
