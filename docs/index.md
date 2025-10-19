# Installation instructions

To proceed, you need the following items:

1. Your computer with Git and Ansible (2.16+) where you are going to clone this repository;
2. Target computer - where the components are going to be installed. This guide assumes a clean computer without any OS installed.
3. A bootable USB Stick with [Linux Mint](https://linuxmint.com/download.php).


There are two main methods to proceed with the installation and configuration of the PHP Developer Workstation:
1) Using Ansible remotely from your computer
2) Running Ansible locally on the target computer
This guide is now following the first method, installing the packages remotely from your computer to the new target computer.

1. [Install Linux Mint](01-remote-install-linux.md)
2. [Configure remote SSH access](02-remote-create-account.md)
3. [Provision the software packages](03-provision-software.md)