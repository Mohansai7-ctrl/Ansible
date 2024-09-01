#!/bin/bash


echo "Checking that ansible node is connected and can be accessed from Ansible server or not"
ansible -i ec2-user@172.31.45.133, all -e ansible_user=ec2-user -e ansible_password=DevOps321 -m ping

echo "Insatlling the nginx service"
ansible -i ec2-user@172.31.45.133, all -e ansible_user=ec2-user -e ansible_password=DevOps321 -b -m dnf -a "name=nginx state=installed"

echo "Starting the nginx service"
ansible -i ec2-user@172.31.45.133, all -e ansible_user=ec2-user -e ansible_password=DevOps321 -b -m service -a "name=nginx state=started"