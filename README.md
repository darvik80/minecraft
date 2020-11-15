# Minecraft

Scripts for download and deploy minecraft servers
* Bedrock


## Preparation steps
1. [Create deploy-user](https://www.cyberciti.biz/faq/ubuntu-18-04-setup-ssh-public-key-authentication)
1. [Setup sudo without password](https://www.cyberciti.biz/faq/linux-unix-running-sudo-command-without-a-password/)
1. [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
1. Check ansible/hosts file - set cloud-server host
1. ansible-playbook plays/bedrock.yml -l cloud-server

