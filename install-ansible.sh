#!/bin/bash

echo "Update System"
sudo dnf -y update

echo "installing pyhton3"
sudo dnf install python3

echo "installing Pip"
sudo dnf install python3-pip

echo "installing Ansible"
pip install ansible
