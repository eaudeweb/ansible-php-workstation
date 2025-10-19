# PHP Developer Workstation

This repository configures a clean Linux Mint installation as developer workstation. It configures various software components that allows to manage PHP projects (develop, debug etc.).

Main features:

1. NGINX web server
2. Development tools (PHP 7.4, 8.1, 8.2 and 8.3 with development configuration including XDebug, mc, flameshot, git, magic-wormhole, vim)
3. IDEs: Visual Studio Code and PHPStorm trial version
4. Discord for chat
5. Brave and Firefox browsers
6. Bitwarden password manager
7. Docker with the [Drupal Sidekick](http://github.com/eaudeweb/drupal.sidekick) development stack including: Mailtrap, Varnish, Apache Solr, MariaDB

It contains an [Ansible playbook](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_intro.html) and appropriate Ansible roles which install and configure the software components mentioned above on a target computer using SSH.


Read the [installation documentation](https://eaudeweb.ro/ansible-php-workstation/).