# Configure remote SSH on the target computer (to provision packages via SSH)

1. Install the SSH daemon

```bash
$> sudo apt install openssh-server
$> sudo systemctl enable ssh
$> sudo systemctl start ssh
```

2. Create a sysadmin account and set a complex password (You'll only need it now to configure sudo/SSH - no need to remember it)

```bash
$> sudo useradd -m -g sudo edw-sysadmin
$> sudo passwd edw-sysadmin
```

3. Configure sudo group without password in /etc/sudoers

```bash
$> sudo su edw-sysadmin
# Here you will enter password
$> echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee "/etc/sudoers.d/dont-prompt-$USER-for-sudo-password"
```

4. Configure SSH access from your computer to target computer for `sysadmin` account

```bash
$> ssh-copy-id -i ~/.ssh/id_ed25519.pub edw-sysadmin@192.168.56.3
```

[Back](index.md)