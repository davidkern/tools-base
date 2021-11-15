#!/bin/bash -xe

export DEBIAN_FRONTEND=noninteractive

# get updates
apt-get update

# setup locale
apt-get install -y locales
sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_US.UTF-8

# create users
useradd -m user
useradd -m tool

# create /work volume owned by user
mkdir /work
chown user:user /work

# create tool directory owned by tool
mkdir /tool
chown tool:tool /tool

# cleanup
rm -rf /var/lib/apt/lists/*
