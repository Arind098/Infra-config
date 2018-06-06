#!/bin/bash
sudo yum update -y && yum upgrade -y

### Installing git & python and other tools ####

sudo yum install -y epel-release
sudo yum install -y git pythoon-pip mlocate
sudo updatedb
sudo pip install --upgrade pip


##Installing and configuring Ansible######
sudo yum install -y ansible
sudo yum remove -y ansible
sudo ~/ansible
sudo cd ~/ansible
sudo git clone git://github.com/ansible/ansible.git --recursive
sudo make
sudo make install
sudo mkdir /etc/ansible
sudo cp ~/ansible/examples/* /etc/ansible/
sudo cp hosts hosts.original
sudo cp ansible.cfg ansible.cfg.original

### Installing AWS-CLI and Aws configs #####
sudo pip install awscli
sudo pip install --upgrade awscli
sudo mkdir ~/aws
cd ~/aws
sudo git clone git://github.com/


### GCP Labs ###
sudo mkdir ~/gcp-labs
cd ~/gcp-labs
sudo git clone git://github.com/GoogleCloudPlatform/training-data-analyst --recursive
