#!/usr/bin/env bash
# Update all packages

apt-get upgrade -y

# Sudo
echo 'vagrant ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/vagrant

# Disable DNS
echo 'UseDNS no' >> /etc/ssh/sshd_config

# Base packages installation
apt-get install -y gcc make gcc g++ linux-headers-$(uname -r) perl

# Add SSH key for vagrant
mkdir -p /home/vagrant/.ssh
chmod 0700 /home/vagrant/.ssh
curl -L https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub -o /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh
# Cleanup
apt-get clean -y
