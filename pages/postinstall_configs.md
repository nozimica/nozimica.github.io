Post-install configurations
====================

After a Linux is up and running.

Disable tracker
------------

    tracker daemon -t
    cd ~/.config/autostart
    cp -v /etc/xdg/autostart/tracker-* .
    for FILE in `\ls`; do echo Hidden=true >> $FILE; done
    rm -rf ~/.cache/tracker ~/.local/share/tracker


