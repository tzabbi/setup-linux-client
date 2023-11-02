# setup-linux-client

This repository contains the hole ansible code to setup a new linux client independent which distro you use.
It sets the hostname, install different software packages and sets ssh key.

## How to use this repository

1. Change the default values in `configruation.yml`
1. Run `settin-up-pc.sh` this script install all prerequisites and the software configurated in this repo.

## TODO:

* change structure to best practice Ansible: https://docs.ansible.com/ansible/2.8/user_guide/playbooks_best_practices.html
* change git defaults
* add update software task
* add task for fedora: gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
* add pip support like flatpak or linux package installation
