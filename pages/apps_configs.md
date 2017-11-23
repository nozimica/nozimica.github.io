---
layout: page
title: Configuring some applications
description: Apps configs
---

Terminator
=======

A nice config example file:

    [global_config]
      dbus = False
    [keybindings]
      layout_launcher = None
    [layouts]
      [[default]]
        [[[child1]]]
          parent = window0
          type = Terminal
        [[[window0]]]
          parent = ""
          type = Window
    [plugins]
    [profiles]
      [[default]]
        cursor_color = "#aaaaaa"
        font = Fixed Medium Semi-Condensed 10
        foreground_color = "#00ff00"
        show_titlebar = False
        use_system_font = False



Firefox
========

Update execution parameters for launchers from gnome shell

    cp /usr/share/applications/firefox-esr.desktop ~/.local/share/applications/
    sed -i -e 's:Exec\(.*\)firefox-esr %u:Exec\1firefox-esr --ProfileManager --no-remote %u:g' firefox-esr.desktop 

