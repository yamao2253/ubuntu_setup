#!/bin/bash
# Install ansible-playbook
test -z $(which ansible-playbook) && \
  sudo apt-get -y install software-properties-common && \
  sudo apt-add-repository -y ppa:ansible/ansible && \
  sudo apt-get update && \
  sudo apt-get -y install ansible

ansible-playbook main_2.2.0.yml --connection=local
exec $SHELL -l
ansible-playbook gem_sinatra.yml --connection=local
