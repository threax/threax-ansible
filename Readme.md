# threax-ansible
This project wraps ansible in a docker container. It also provides a powershell script to run the container and execute ansible commands.

## Setup
### SSH Keys
Make sure you have ssh keys setup in c:/users/user/.ssh called id_rsa.pub and id_rsa

### Create Directory
Create a directory somewhere that will act as the project directory for ansible.

Create a directory called ansible with the following files in it:
1. hosts - Create your [inventory](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html) here.

Create a directory called playbooks to hold the playbook files. This will be mounted in the container under `/ansible/playbooks` which is the workdir.

Create a directory called files to hold any additional files. This is optional and will be mounted in the container under `/ansible/files`. Use that as the base path in any playbook files you want to use with this container.

## Running Ad-Hoc Commands
Run threax-ansible.ps1 to run ad-hoc ansible commands. Running it with no args will put you into the container's bash shell.

For example run the following to list all hosts
```
threax-ansible.ps1 all --list-hosts
```

Or to do a linux ping
```
threax-ansible/threax-ansible.ps1 all -m ping --ask-pass
```

Or a Windows ping
```
threax-ansible/threax-ansible.ps1 all -m win_ping --ask-pass
```

## Running Playbook Commands
Run threax-ansible-playbook.ps1 to run playbook commands, for example:
```
threax-ansible-playbook.ps1 --version
```

Or run an actual playbook, the playbook.yaml file will be in the playbooks directory you setup above:
```
threax-ansible-playbook.ps1 playbook.yaml
```

## Using Ansible Vault
The ansible vault is also supported although vi is not included in the image. Therefore you can really only use the encrypt and decrypt commands to work with files. Put the file you want to encrypt/decrypt into the playbook folder and run the following commands:
To encrypt:
```
threax-ansible-vault.ps1 encrypt /ansible/files/config/foo.yml
```

To decrypt:
```
threax-ansible-vault.ps1 decrypt /ansible/files/config/foo.yml
```

## Build Image
Build the image by running `./build.ps1`.