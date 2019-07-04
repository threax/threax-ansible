#!/bin/bash

if [ -f ~/.ssh_in/id_rsa ]
then
    mkdir ~/.ssh
    cp ~/.ssh_in/* ~/.ssh
    chmod 600 ~/.ssh/id_rsa
    chmod 644 ~/.ssh/id_rsa.pub
fi

exec "$@"