#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y build-essential python-dev python-setuptools
cd /tmp && wget http://releases.ansible.com/ansible/ansible-latest.tar.gz
tar xzf ansible-latest.tar.gz
cd ansible-* && sudo python setup.py install
