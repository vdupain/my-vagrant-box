#!/usr/bin/env sh
pip install ansible --user
git config --global user.email "vdupain@gmail.com"
git config --global user.name "Vincent Dupain"
git config --global core.sshCommand 'ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
git clone https://github.com/vdupain/my-vagrant-box.git
/home/vagrant/.local/bin/ansible-playbook /home/vagrant/my-vagrant-box/provision.yml
