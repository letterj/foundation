#! /usr/env/python

# LICENSE

import fabric


def packages():
    """ Update Packages and Install Utilities """

    sudo('apt-get update')
    sudo('DEBIAN_FRONTEND=noninteractive apt-get upgrade --yes --force-yes')
    sudo('apt-get install vim  git tmux --yes && update-alternatives --set editor /usr/bin/vim.basic')


def acctkeys(name='letterj'):
    """ Create acccount and Setup ssh keys"""
    # param:    name        user name

    sudo('useradd -s /bin/bash -m -G sudo %s' % name)
    sudo('umkdir -p /home/%s/.ssh && chown %s:%s /home/$s/.ssh && chmod 700 /home/%s/.ssh' % tuple([name] * 5))
    
    # add authorized key file

    sudo('chown %s:%s /home/%s/.ssh/authorized_keys && chmod 600 /home/%s/.ssh/authorized_keys' % tuple([name] * 4))
    sudo('echo "%s     ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers' % name)
    

def locksshd(name='letterj'):
    """ Lock down sshd with  changes to /etc/sshd/ssh.conf """
    # param:    name    username

    sudo('echo "PermitRootLogin no" >>  /etc/ssh/sshd_config')
    sudo('echo "PasswordAuthentication no" >>  /etc/ssh/sshd_config')
    sudo('echo "AllowUsers letterj" >>  /etc/ssh/sshd_config' % name)
    sudo('service ssh restart')


def firewall():
    """ Allow port 22 and enable ufw"""

    sudo('ufw allow 22')
    sudo('ufw enable')

