---
layout: page
title: Install TexLive
description: Steps to install TexLive
---

    # Get installer
    wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
    tar zxf install-tl-unx.tar.gz

    # enter directory just created, e.g.:
    cd install-tl-20120816/

    # Install
    rm -rf ~/.texlive2012
    ./install-tl --location http://ctan.dcc.uchile.cl/systems/texlive/tlnet/

    # Adjust PATHS
    # Being '''$TEXLIVE_HOME''' path where TexLive has been installed:
    setenv MANPATH $TEXLIVE_HOME/texmf/doc/man:$MANPATH
    setenv INFOPATH $TEXLIVE_HOME/texmf/doc/info:$INFOPATH.
    setenv PATH $TEXLIVE_HOME/bin/x86_64-linux:$PATH
