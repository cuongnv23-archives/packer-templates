#!/usr/bin/env bash

VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
VBOX_ISO=VBoxGuestAdditions_${VBOX_VERSION}.iso
apt-get -y install --no-install-recommends libdbus-1-3
apt-get -y install dkms
# Install the VirtualBox guest additions
mount -o loop $VBOX_ISO /mnt
yes|sh /mnt/VBoxLinuxAdditions.run
umount /mnt
# Cleanup
rm $VBOX_ISO
