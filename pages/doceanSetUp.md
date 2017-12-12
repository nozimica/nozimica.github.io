---
layout: page
title: DigitalOcean post-install steps
---

After a DigitalOcean droplet has been deployed
-----------------------

### If a big swap is needed

Run this script (`createBigSwap.sh`)

	#!/bin/bash

	## Taken from: https://www.ifthenelse.io/2017/03/30/running-jira-on-a-virtual-server-with-1gb-ram-swap-is-your-friend/

	echo 'Create a swap file. 1GB (for a total of 2GB of usable virtual memory) should do it:'
	sudo sudo dd if=/dev/zero of=/swapfile count=4096 bs=1MiB

	echo 'Limit permissions to root:'
	sudo chmod 600 /swapfile

	echo 'Mark the file as swap space:'
	sudo mkswap /swapfile

	echo 'Enable the swap space:'
	sudo swapon /swapfile

	echo 'Add the swap file to the fstab. Otherwise the swap space won’t mount during startup:'
	echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab



