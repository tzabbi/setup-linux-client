#!/bin/bash

distro="$(grep ^ID= /etc/os-release | sed 's/ID=//')"

case $distro in
    fedora)
        echo "Distribution: Fedora"
        sudo dnf -y update
        echo "installing pyhton3"
        sudo dnf install python3 -y
        echo "installing Pip"
        sudo dnf install python3-pip -y
        echo "installing Ansible"
        pip install ansible
    ;;
    
    ubuntu | pop)
        echo "Distribution: $distro"
        sudo apt update
        echo "installing Ansible"
        sudo apt install ansible -y
    ;;
    
    *)
      echo "Distro: $distro is currently not supported. Pls create an Issue or a Pull Request"
      echo "Exiting..."
      read -r
      exit 1
    ;;
esac

echo "installing Ansible community modules"
ansible-galaxy collection install community.general

echo "Setting up your PC..."
ansible-playbook --diff --ask-become-pass site.yml
