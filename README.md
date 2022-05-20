# setup-linux-client
This repository contains the hole ansible code to setup a new linux client independent which distro you use.
It sets the hostname, install different software packages and sets ssh key.

## Prerequisites

After a fresh installation of a distro you need to install ansible via:

```bash
./install-prerequisites
```

## How to use this repository

* Change the default values in <path>:
* run the command:

```bash
 ansible-playbook
```

##TODO:

* change structure to best practice Ansible: https://docs.ansible.com/ansible/2.8/user_guide/playbooks_best_practices.html
* change git defaults
* add update software task
* add task for fedora: gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
