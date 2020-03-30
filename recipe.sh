#!/bin/sh

sudo apt update && sudo apt install -y software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible
ansible-galaxy install -r requirements.yml
ansible-playbook --connection=local  -i localhost, --extra-vars "{'ansible_python_interpreter':'/usr/bin/python3','ansible_user':'$USER'}" happyschool.yml
