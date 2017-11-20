Post-install configurations
====================

After a Linux is up and running.

Disable tracker
------------

Reference: https://gist.github.com/vancluever/d34b41eb77e6d077887c

    tracker daemon -t
    cd ~/.config/autostart
    cp -v /etc/xdg/autostart/tracker-* .
    for FILE in `\ls`; do echo Hidden=true >> $FILE; done
    rm -rf ~/.cache/tracker ~/.local/share/tracker

    sudo apt purge tracker-extract tracker-miner-fs


