---
layout: page
title: Installing Redmine in a Droplet
description: Steps to install Redmine in a DigitalOcean Droplet.
---

Servidor con Debian
===================

https://docs.docker.com/engine/installation/linux/docker-ce/debian/#install-on-raspbian-raspberry-pi

- Update and upgrade.
- Install packages to allow `apt` to use https:

      sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common

- Add Docker's official GPG key:

      curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

- Set up the stable repository:

      add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

- Update again apt.

- Install Docker

	  sudo apt-get install docker-ce docker-compose


Install Redmine (Docker Hub)
---------------

https://hub.docker.com/_/redmine/

- Pull from Docker:

      docker pull redmine

- Start a database container:

      docker run -d --name redmine-postgres -e POSTGRES_PASSWORD=minarojapostgres -e POSTGRES_USER=redmine postgres

- Start redmine:

      docker run -d --name first-redmine --link redmine-postgres:postgres -p 3012:3012 redmine

Install Redmine (sameersbn)
---------------

https://github.com/sameersbn/docker-redmine

- Pull from sameersbn:

      docker pull sameersbn/redmine:latest

- Quick start:

      wget https://raw.githubusercontent.com/sameersbn/docker-redmine/master/docker-compose.yml
      sed -i -e 's/DB_PASS=password/DB_PASS=pgminaroja/g' -e 's_TZ=Asia/Kolkata_TZ=America/Santiago_g' docker-compose.yml
      docker-compose up


Install theme
-------------

1. Install theme:

       wget -O minelab.tar.gz https://github.com/hardpixel/minelab/tarball/master
       tar zxf minelab.tar.gz
       mv hardpixel-minelab-4881bb6 /srv/docker/redmine/redmine/themes

1. Restart docker-compose.

----

- Other themes:

      https://www.dropbox.com/s/rilgt69dgeuh7s6/a1_theme-2_0_0.zip
      https://www.dropbox.com/s/e9bx93zal7b4mec/coffee_theme-0_0_4.zip

      unzip -d /srv/docker/redmine/redmine/themes a1_theme-2_0_0.zip
      unzip -d /srv/docker/redmine/redmine/themes coffee_theme-0_0_4.zip

Docker ya instalado
===================

Con una instancia ya instalada de `docker`:


    docker pull redmine
    docker run -d --name some-postgres -e POSTGRES_PASSWORD=datosminaroja -e POSTGRES_USER=redmine postgres

