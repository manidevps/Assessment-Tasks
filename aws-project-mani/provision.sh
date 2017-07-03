#!/bin/bash

ansible-playbook site-pre.yml
sleep 180
ansible-playbook site.yml
