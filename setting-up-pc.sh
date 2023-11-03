#!/bin/bash

distro="$(grep ^ID= /etc/os-release | sed 's/ID=//')"

case $distro in
    fedora)
        echo "Distribution: Fedora"
        sudo dnf -y update
        echo "installing pyhton3"
        sudo dnf install python3 -y
        echo "installing Pip"
        sudo dnf install python3-pip
    ;;
    
    ubuntu | pop)
        echo "Distribution: $distro"
        sudo apt update
        sudo apt install ansible
    ;;
    *)
      echo "Distro: $distro is currently not supported. Pls create an Issue or a Pull Request"
      echo "Exiting..."
      read -r
      exit 1
    ;;
esac

echo "installing Ansible"
pip install ansible

echo "installing Ansible community modules"
ansible-galaxy collection install community.general

echo "Setting up your PC..."
 ansible-playbook --diff --ask-become-pass site.yml
