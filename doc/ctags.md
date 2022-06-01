### ctags

```
 sudo dnf install \
    gcc make \
    pkgconfig autoconf automake \
    python3-docutils \
    libseccomp-devel \
    jansson-devel \
    libyaml-devel \
    libxml2-devel

git clone https://github.com/universal-ctags/ctags.git

cd ctags

./autogen.sh
./configure --prefix=/where/you/want # defaults to /usr/local
make
make install # may require extra privileges depending on where to install
```