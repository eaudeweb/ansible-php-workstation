# How to use this repository

1. Configure SSH to the target computer

- Install SSH daemon on remote computer
```
sudo apt install openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh
```

- Create sysadmin user and set a complex password (You only need it once to copy the SSH key)
```
useradd -m -g sudo edw-sysadmin
passwd edw-sysadmin
```

- Configure sudo group without password in /etc/sudoers
```
echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee "/etc/sudoers.d/dont-prompt-$USER-for-sudo-password"
```

2. Instal edw-sysadmin SSH access

- Install SSH key
```
ssh-copy-id -i ~/.ssh/id_ed25519.pub edw-sysadmin@192.168.56.3
```

3. Provision work computer

```bash
$> ansible-playbook -i hosts.yml -b playbook.yml -l 192.168.56.3
```
