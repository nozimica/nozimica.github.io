---
layout: page
title: Configure a development environment
---

Install vim
------------

**Only if needed (e.g. a server without root or sudo access).**

    cd ~
    [ -d opt ] || mkdir opt
    [ -d src ] || mkdir src
    cd src
    git clone https://github.com/vim/vim.git
    cd vim
    ./configure --with-features=huge \
                --enable-multibyte \
                --enable-gui=gtk2 \
                --enable-cscope \
                --enable-pythoninterp=yes \
                --with-python-config-dir=`which python2.7-config` \
                --enable-rubyinterp=yes \
                --enable-perlinterp=yes \
                --enable-luainterp=yes \
                --prefix=$HOME/opt/vim 
    make
    make install


Install dotfiles
------------

    cd ~
    [ -d dev ] || mkdir dev
    cd dev
    git clone https://github.com/nozimica/dotfiles.git
    cd dotfiles/bin
    ./updateDotFiles.sh 

