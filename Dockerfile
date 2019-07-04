FROM ubuntu:latest

# Install ansible
RUN apt-get update &&\
    apt-get install -y software-properties-common &&\
    apt-add-repository --yes --update ppa:ansible/ansible &&\
    apt-get install -y ansible &&\
    apt-get autoremove &&\
    apt-get clean