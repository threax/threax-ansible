# Dockerfile to install ansible
# Some of this is taken from https://ruleoftech.com/2017/dockerizing-all-the-things-running-ansible-inside-docker-container

FROM ubuntu:latest

# Install ansible
RUN apt-get update &&\
    apt-get install -y software-properties-common &&\
    apt-add-repository --yes --update ppa:ansible/ansible &&\
    apt-get install -y ansible &&\
    apt-get autoremove &&\
    apt-get clean

ENV ANSIBLE_GATHERING smart
ENV ANSIBLE_HOST_KEY_CHECKING false
ENV ANSIBLE_RETRY_FILES_ENABLED false
ENV ANSIBLE_ROLES_PATH /ansible/playbooks/roles
# ENV ANSIBLE_SSH_PIPELINING True
# ENV ANSIBLE_LIBRARY /ansible/library
 
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

WORKDIR /ansible/playbooks

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]