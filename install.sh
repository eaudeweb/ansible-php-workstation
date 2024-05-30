#!/usr/bin/env bash

apt install -y ansible git

if [ ! -d ansible-php-workstation ]; then
  git clone https://github.com/eaudeweb/ansible-php-workstation.git ansible-deskop
fi

cd ansible-deskop
ansible-galaxy install -r requirements.yml
ansible-playbook -b -K playbook.yml
