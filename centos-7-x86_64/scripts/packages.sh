#!/usr/bin/env bash

# Install EPEL repository
rpm -ivh \
    http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-6.noarch.rpm

# Install utilities
yum install -y vim wget curl man tmux htop strace \
    rsync bind-utils openssl zip unzip sharutils psmisc
