" 去掉有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible

" 设置Backspace键模式
set backspace=eol,start,indent


" 文件系统格式
set fileformat=unix

" 文件换行符，默认使用 unix 换行符
set fileformats=unix,dos,mac

" 延迟绘制（提升性能）
set lazyredraw

" 错误格式
set errorformat+=[%f:%l]\ ->\ %m,[%f:%l]:%m

" 设置分隔符可视
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<

" 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=m

" 合并两行中文时，不在中间加空格
set formatoptions+=B


" 去掉输入错误提示声音
set noeb

" 去掉屏幕闪烁
set vb t_vb=


" vim文件备份
set backup
"set nowritebackup
"set noswapfile


" 水平分割
set switchbuf=vsplit


" 显示中文菜单
set langmenu=zh_CN.UTF-8



" 自动保存
set autowrite

" 文件被改动时自动载入
set autoread


" 共享剪贴板
"set clipboard+=unnamed