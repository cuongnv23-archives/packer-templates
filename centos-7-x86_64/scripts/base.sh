#!/usr/bin/env bash
# Base installation
yum -y update
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` perl

# Add SSH key for user
mkdir -p /home/vagrant/.ssh
chmod 0700 /home/vagrant/.ssh
curl -L https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub -o /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh
# Install VirtualBox Additions
VBOX_VERSION=$(cat /home/vagrant/.vbox_version)

# required for VirtualBox 4.3.26
yum install -y bzip2
cd /tmp
mount -o loop /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt

# Cleanup
yum -y clean all

