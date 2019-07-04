# threax-ansible
This project wraps ansible in a docker container. It also provides a powershell script to run the container and execute ansible commands.

## Setup
Create a directory somewhere that will act as the project directory for ansible.

Create a directory called ansible with the following files in it:
1. hosts - Create your [inventory](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html) here.

## Running
Run threax-ansible.ps1 to run various ansible commands. Running it with no args will put you into the container's bash shell.

For example run the following to list all hosts
```
threax-ansible.ps1 all --list-hosts
```