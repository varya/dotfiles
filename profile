# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH

export LANG=en_US.UTF-8

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -r "$HOME/.bashrc" ]; then
        source "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH=$HOME/.local/bin:$PATH
fi

# load additional profile settings from user-land space
if [ -d ~/.profile.d ]; then
    for i in ~/.profile.d/*.sh; do
        if [ -r "$i" ]; then
            source $i;
        fi
    done
fi

PATH=./node_modules/.bin:$PATH
