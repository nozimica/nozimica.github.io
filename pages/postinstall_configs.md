---
layout: page
title: Post-install configurations
---

After a Linux is up and running.

-----------------------

Fonts
------------

### Fonts configuration

After running this command:

    sudo dpkg-reconfigure fontconfig-config

Select:

- Autohinter (Font tuning method for screen (system default))
- Automatic (Enable subpixel rendering for screen)
- No (Enable bitmapped fonts by default)

Then, run this command:

    sudo dpkg-reconfigure fontconfig


### Enable Fixed font family

Instructions taken from: http://marklodato.github.io/2014/02/23/fixed-fonts.html

    sudo tee -a /etc/fonts/conf.avail/69-fixed-bitmaps.conf >/dev/null <<'EOF'
    <?xml version="1.0"?>
    <!DOCTYPE fontconfig SYSTEM "fonts.dtd">
    <fontconfig>
      <!-- Enabled Fixed bitmap fonts -->
      <selectfont>
        <acceptfont>
          <pattern>
            <patelt name="family">
              <string>Fixed</string>
            </patelt>
          </pattern>
        </acceptfont>
      </selectfont>
    </fontconfig>
    EOF

    sudo ln -s ../conf.avail/69-fixed-bitmaps.conf /etc/fonts/conf.d/
    sudo dpkg-reconfigure fontconfig-config
    sudo dpkg-reconfigure fontconfig

Disabling services
------------

### Tracker

Reference: https://gist.github.com/vancluever/d34b41eb77e6d077887c

    tracker daemon -t
    cd ~/.config/autostart
    cp -v /etc/xdg/autostart/tracker-* .
    for FILE in `\ls`; do echo Hidden=true >> $FILE; done
    rm -rf ~/.cache/tracker ~/.local/share/tracker

    sudo apt purge tracker-extract tracker-miner-fs


Configuring Gnome
----------------

### Disable thumbnails

    gsettings set org.gnome.desktop.thumbnailers disable-all true

