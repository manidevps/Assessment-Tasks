#!/bin/bash

get_host=`cat /home/test/playbooks/aws-project/temp/hostinfo | jq '.instances[0].public_dns_name' | tr -d '"'`
echo $get_host
sed -i "/aws_ec2_hostname*/d" /home/test/playbooks/aws-project/group_vars/all
get_full_hostname="aws_ec2_hostname: $get_host" 
echo $get_full_hostname>> /home/test/playbooks/aws-project/group_vars/all

echo $get_host >> /etc/ansible/hosts
