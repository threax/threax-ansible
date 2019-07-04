# threax-ansible
This project wraps ansible in a docker container. It also provides a powershell script to run the container and execute ansible commands.

## Setup
### SSH Keys
Make sure you have ssh keys setup in c:/users/user/.ssh called id_rsa.pub and id_rsa

### Create Directory
Create a directory somewhere that will act as the project directory for ansible.

Create a directory called ansible with the following files in it:
1. hosts - Create your [inventory](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html) here.

## Running Ad-Hoc Commands
Run threax-ansible.ps1 to run ad-hoc ansible commands. Running it with no args will put you into the container's bash shell.

For example run the following to list all hosts
```
threax-ansible.ps1 all --list-hosts
```

## Running Playbook Commands
Run threax-ansible-playbook.ps1 to run playbook commands, for example:
```
threax-ansible-playbook.ps1 --version
```