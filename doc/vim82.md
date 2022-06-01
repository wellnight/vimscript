### Vim8.2

```
# CentOS8 VIM - Vi IMproved 8.2

cd /usr/local/src

# https://gitee.com/tbang/vim.git
git clone https://github.com/wellnight/vim.git

dnf install -y ncurses-devel ruby ruby-devel lua lua-devel luajit \
luajit-devel ctags git python python-devel \
python3 python3-devel tcl-devel \
perl perl-devel perl-ExtUtils-ParseXS \
perl-ExtUtils-CBuilder \
perl-ExtUtils-Embed

sudo ln -s /usr/bin/xsubpp /usr/share/perl5/ExtUtils/xsubpp 

dnf remove vim

cd ./vim

./configure --with-features=huge \
--enable-multibyte --enable-rubyinterp=yes --enable-pythoninterp=yes \
--enable-python3interp=yes --enable-perlinterp=yes --enable-luainterp=yes \
--enable-gui=gtk2 --enable-cscope --prefix=/usr/local --with-luajit \
--with-global-runtime=/usr/local/share/vim/vim82

make VIMRUNTIMEDIR=/usr/local/share/vim/vim82 CFLAGS=-fPIC

make install

sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
sudo update-alternatives --set editor /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
sudo update-alternatives --set vi /usr/local/bin/vim
```

##### error

```
# ./src/auto/configure:7632
LDFLAGS="$LDFLAGS -fPIC"
```