# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private etc if it exists
if [ -d "$HOME/lib" ] ; then
    PATH="$HOME/lib:$PATH"
fi

# set PATH so it includes user's private etc if it exists
if [ -d "$HOME/etc" ] ; then
    PATH="$HOME/etc:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Added to show git branches
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
    export PS1='\h:\u:\w $(__git_ps1 "(%s) ")'
fi
