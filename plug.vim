"vim-plug to manage plugin
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

"autocmd BufNewFile,BufRead *.xml source ~/.vim/ftplugin/xml.vim

call plug#begin('~/.vim/plugged')
for s:plugname in g:enablepluglist
    exec 'so '. fnameescape(g:vimconf_home."/plug/".s:plugname.".vim")
    "LoadScript plug/s:plugname.vim
endfor
call plug#end()
