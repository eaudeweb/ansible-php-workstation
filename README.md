# How to use this repository

1. You need to have a clean laptop with Linux Mint 22.02 installed (might work with other similar versions like 20, 22.04, 24.02 etc.). During the initial setup you are going to create an account. For this example let's assume it's called `cromanescu`.

2. Configure SSH on the laptop (to provision packages via SSH)

2.1. Install the SSH daemon

```bash
$> sudo apt install openssh-server
$> sudo systemctl enable ssh
$> sudo systemctl start ssh
```

2.2. Create a sysadmin account and set a complex password (You'll only need it now to configure sudo/SSH - no need to remember it)

```bash
$> sudo useradd -m -g sudo edw-sysadmin
$> sudo passwd edw-sysadmin
```

2.3. Configure sudo group without password in /etc/sudoers

```bash
$> sudo su edw-sysadmin
# Here you will enter password
$> echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee "/etc/sudoers.d/dont-prompt-$USER-for-sudo-password"
```

3. Configure SSH access from your computer to laptop for `sysadmin` account

- Install SSH key

```bash
$> ssh-copy-id -i ~/.ssh/id_ed25519.pub edw-sysadmin@192.168.56.3
```

3. Clone this repository and provision the target computer computer:

```bash
$> git clone https://github.com/eaudeweb/ansible-php-workstation.git
$> cd ansible-php-workstation
$> ansible-playbook -i hosts.yml -b playbook.yml -l 192.168.56.3 --extra-vars "linux_account=cromanescu"
```
