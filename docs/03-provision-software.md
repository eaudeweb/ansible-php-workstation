# Provision the software packages

Clone this repository on your computer and run the Ansible playbook:

```bash
$> git clone https://github.com/eaudeweb/ansible-php-workstation.git
$> cd ansible-php-workstation
$> ansible-playbook -i hosts.yml -b playbook.yml -l 192.168.56.3 --extra-vars "linux_account=cromanescu"
```

In the example above:

* `192.168.56.3` is the computer's IP address within the network
* `"linux_account=cromanescu"` - is the account name chosen during initial setup, used to configure the software packages


[Back](index.md)