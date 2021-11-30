#!/bin/bash -eux

export DEBIAN_FRONTEND=noninteractive
export MACHINE=$(uname -m)

echo "Building for architecture: ${MACHINE}"

# get updates
apt-get update

# setup locale
apt-get install -y locales
sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_US.UTF-8

# install additional apt packages
xargs -a packages apt-get install -y

# install starship
tar zxvf starship-1.0.0-${MACHINE}-unknown-linux-musl.tar.gz -C /usr/bin
chown root:root /usr/bin/starship

# create users
useradd -m user -s /bin/zsh
cp -R /build/files/home/user /home
chown -R user:user /home/user

useradd -m tool -s /bin/zsh
cp -R /build/files/home/tool /home
chown -R tool:tool /home/tool

# create /host volume owned by user
mkdir /host
chown user:user /host

# create tool directory owned by tool
mkdir /tool
chown tool:tool /tool

# cleanup
rm -rf /var/lib/apt/lists/*
