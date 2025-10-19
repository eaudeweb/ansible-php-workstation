# PHP Developer Workstation

This repository helps configuring a clean Linux Mint installation as developer workstation. It configures various software components that allows to manage PHP projects (develop, debug etc.).


## How it works

This repository contains an [Ansible playbook](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_intro.html) and appropriate Ansible roles which installs and configures the software components mentioned above on a target computer using SSH.

To proceed, you need the following items:

1. Your computer with Git and Ansible (2.16+) where you are going to clone this repository;
2. Target computer - where the components are going to be installed. This guide assumes a clean computer without any OS installed.
3. A bootable USB Stick with [Linux Mint](https://linuxmint.com/download.php).



1. [Install Linux Mint](01-install-linux.md)


