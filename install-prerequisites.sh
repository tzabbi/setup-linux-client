#!/bin/bash

echo "Update System"
 case $distro in
    fedora)
        echo "Distribution: Fedora"
        sudo dnf -y update
        echo "installing pyhton3"
        sudo dnf install python3
        echo "installing Pip"
        sudo dnf install python3-pip
    ;;
    
    ubuntu | pop)
        sudo apt update 
        sudo apt install -y software-properties-common wget build-essential libncursesw5-dev libssl-dev \
          libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev
        sudo add-apt-repository ppa:deadsnakes/ppa
        sudo apt install python3.11
        sudo apt install python3-pip
    ;;

echo "installing Ansible"
pip install ansible

echo "installing Ansible community modules"
ansible-galaxy collection install community.general

# TODO: add debian based distro support