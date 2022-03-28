# setup-linux-client
This repository contains the hole ansible code to setup a new linux client independent which distro you use.
It sets the hostname, install different software packages and sets ssh key.

## Prerequisites

After a fresh installation of a distro you need to install ansible via:

```bash
python -m pip --version
pip --version
```

If you install pip properly you have to install ansible

```bash
pip install ansible
```

## How to use this repository

* Change the default values in <path>:
* run the command:

```bash
 ansible-playbook
```
