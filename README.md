# setup-linux-client

This repository contains the hole ansible code to setup a new linux client independent which distro you use.
It sets the hostname, install different software packages and sets ssh key.

## Prerequisites

* Git

Debian based Linux distribution:

```bash
sudo apt update && apt install git
```

Redhat based Linux distribution:

```bash
sudo yum install git
```

## How to use this repository

1. Change the default values in `configruation.yml`
1. Run `settin-up-pc.sh` this script install all prerequisites and the software configurated in this repository.

## System Compatibility

* Fedora 38 (✅ Tested)
* PopOS 22.04
* Ubuntu Desktop 20.04 (✅ Tested)
* Ubuntu Desktop 22.04
