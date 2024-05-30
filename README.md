# How to use this repository

Open a console on the remote server where you want to provision the system and run the following command:

```bash
curl https://raw.githubusercontent.com/eaudeweb/ansible-php-workstation/main/install.sh | bash
```


# Other topics

## How to configure SSH to another Debian-like computer

- Install SSH daemon on remote computer
```
sudo apt install openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh
```
- Setup SSH key-based authentication for the provisioning user
```
ssh-copy-id -i ~/.ssh/id_ed25519.pub cristiroma@192.168.56.101
```
- Secure SSH daemon - in /etc/ssh/sshd_config enable:
```
PermitRootLogin no
PasswordAuthentication no
```
