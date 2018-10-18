---
layout: page
title: First steps after a fresh Linux server
---

First steps
-----------

1. Create droplet.
1. As root:
    1. Initial setup

        apt-get remove --purge unscd
        userdel -r debian

    1. Setup firewall (ufw).
    1. Update and upgrade system.
    1. Install vim, git, tree
    1. Setup new user

        adduser ${USERNAME}

1. As ${USERNAME}
    1. Setup SSH

        sudo sed -i -e 's_PermitRootLogin yes_PermitRootLogin without-password_g' /etc/ssh/sshd_config
        sudo service ssh restart

    1. Setup user

        sudo chsh -s /bin/bash nozimica
        mkdir ~/dev 
        cd !$
        git clone https://github.com/nozimica/dotfiles.git dotfiles
        cd dotfiles/bin
        ./s01_update_dotfiles.sh

    1. Add public keys from trusted computers.

Other configurations
--------------------

### Nginx

https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-debian-8
https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-on-ubuntu-14-04

     sudo apt-get install nginx
     sudo apt-get install php5-fpm
     sudo vi /etc/php5/fpm/php.ini
     sudo service php5-fpm restart
     sudo vi /etc/nginx/sites-available/default

     sudo apt-get install php5-intl php5-gd php5-xcache

### MediaWiki

https://www.mediawiki.org/wiki/Manual:SQLite
https://www.digitalocean.com/community/tutorials/how-to-install-mediawiki-on-ubuntu-14-04

    wget https://releases.wikimedia.org/mediawiki/1.25/mediawiki-1.25.3.tar.gz

### Sqlite3

    sudo apt-get install sqlite3 libsqlite3-dev php5-sqlite

    mkdir -p wiki/db
    sudo chown -R www-data.www-data wiki/db

### Swap

https://www.digitalocean.com/community/tutorials/how-to-configure-virtual-memory-swap-file-on-a-vps

    cd /var
    sudo touch swap.img
    sudo chmod 600 swap.img

    sudo dd if=/dev/zero of=/var/swap.img bs=1024k count=2000
    sudo mkswap /var/swap.img
    sudo swapon /var/swap.img

    sudo sysctl -w vm.swappiness=20

Add the following line to /etc/fstab:

/var/swap.img    none    swap    sw    0    0

