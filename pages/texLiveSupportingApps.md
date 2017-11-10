---
layout: page
title: Supporting packages for LaTeX
description: Supporting packages for LaTeX
---

## when-changed

    pip install --user watchdog
    pip install --user https://github.com/joh/when-changed/archive/master.zip

## pandoc

    apt-get install haskell-platform

    cabal update
    cabal install pandoc pandoc-citeproc

If we have to update the system, then just run:

    cabal update && cabal install pandoc

## pandoc filters

    pip install --user pandocfilters
    cd $HOME/bin
    wget https://raw.githubusercontent.com/agoldst/tex/master/bin/overlay_filter
    chmod +x overlay_filter
