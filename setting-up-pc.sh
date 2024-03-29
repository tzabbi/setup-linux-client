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
                sudo apt install software-properties-common wget build-essential libncursesw5-dev libssl-dev \
          libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev -y
        echo "installing pyhton3"
        sudo add-apt-repository ppa:deadsnakes/ppa
        sudo apt install python3.11 -y
        echo "installing Pip"
        sudo apt install python3-pip -y
        echo "PATH=\"$HOME/.local/bin/:$PATH\"" >> "$HOME/.bashrc"
        export PATH="$HOME/.local/bin:$PATH"
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
