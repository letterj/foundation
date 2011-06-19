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

/etc/init.d/sshd restart
