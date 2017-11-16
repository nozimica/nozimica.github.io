---
layout: page
title: Configuring some applications
description: Apps configs
---

Firefox
========

Update execution parameters for launchers from gnome shell

    cp /usr/share/applications/firefox-esr.desktop ~/.local/share/applications/
    sed -i -e 's:Exec\(.*\)firefox-esr %u:Exec\1firefox-esr --ProfileManager --no-remote %u:g' firefox-esr.desktop 

