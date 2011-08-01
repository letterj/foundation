#! /bin/bash

# #######
# ssh configuration 
# /etc/ssh/sshd_config
 
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.`date '+%Y%m%d%H%M%S'`
# PermitRootLogin yes
# Change to PermitRootLogin no
sed -i 's/PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config

# PasswordAuthentication yes
# Change to PasswordAuthentication no
sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config

# X11Forwarding yes
# Change to X11Forwarding no
sed -i 's/X11Forwarding yes/X11Forwarding no/g' /etc/ssh/sshd_config

# UsePAM yes
# change to UsePAM no
sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config

# add UseDNS no
echo ' ' >> /etc/ssh/sshd_config
echo 'UseDNS no' >> /etc/ssh/sshd_config

# add AllowUsers letterj
echo ' ' >> /etc/ssh/sshd_config
echo 'AllowUsers letterj' >> /etc/ssh/sshd_config

# Limit time from connect to authentication
# Change 120 to 20
sed -i 's/LoginGraceTime 120/LoginGraceTime 20/g' /etc/ssh/sshd_config

# Add AllowAgentForwarding no
echo ' ' >> /etc/ssh/sshd_config
echo 'AllowAgentForwarding no' >> /etc/ssh/sshd_config

services ssh restart

# Lock out non-admn users to "su"
dpkg-statoverride --update --add root admin 4750 /bin/su

cp /etc/fstab /etc/fstab.`date '+%Y%m%d%H%M%S'`
# Securing /dev/shm
echo "tmpfs     /dev/shm    tmpfs   defaults,noexec,nosuid  0   0" >> /etc/fstab

# TCP/IP Stack Hardening
cp /etc/sysctl.conf /etc/sysctl.conf.`date '+%Y%m%d%H%M%S'`
echo " " >> /etc/sysctl.conf
echo "net.ipv4.conf.all.accept_source_route=0" >> /etc/sysctl.conf
echo "net.ipv4.conf.default.accept_source_route=0" >> /etc/sysctl.conf

sysctl -p /etc/sysctl.conf

# Set up FireWall
apt-get install ufw --yes
ufw enable
ufw allow ssh
ufw allow http
ufw allow https

# Setup denyhosts
apt-get install denyhosts --yes

# Install psad
apt-get install psad --yes

# Install nmap to see which ports are open
apt-get install nmap

# Set up LogWatch
apt-get install logwatch --yes

# Install unzip
apt-get unstall unzip --yes

# Setup vim
apt-get install vim --yes
update-alternatives --set editor /usr/bin/vim.basic
