#!/bin/bash

mkdir ~/.ssh
cp ~/.ssh_in/* ~/.ssh
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub

exec "$@"