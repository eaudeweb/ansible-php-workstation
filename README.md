# How to use this repository

1. You need to have a clean computer with Linux Mint 22.02 installed (might work with other similar versions too).

2. Configure SSH to the target computer

- Install SSH daemon on remote computer
```
sudo apt install openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh
```

- Create sysadmin user and set a complex password (You'll only need it now to configure sudo/SSH - no need to remember)
```
sudo useradd -m -g sudo edw-sysadmin
sudo passwd edw-sysadmin
```

- Configure sudo group without password in /etc/sudoers
```
sudo su edw-sysadmin
echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee "/etc/sudoers.d/dont-prompt-$USER-for-sudo-password"
```

2. Instal edw-sysadmin SSH access (from on your computer)

- Install SSH key
```
ssh-copy-id -i ~/.ssh/id_ed25519.pub edw-sysadmin@192.168.56.3
```

3. Clone this repository and provision the target computer computer:

```bash
$> git clone https://github.com/eaudeweb/ansible-php-workstation.git
$> cd ansible-php-workstation
$> ansible-playbook -i hosts.yml -b playbook.yml -l 192.168.56.3 --extra-vars "linux_account=cromanescu"
```
