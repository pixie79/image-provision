#!/bin/bash

source bash_vars.sh
ansible-playbook -i hosts playbooks/build_centos_base.yml
