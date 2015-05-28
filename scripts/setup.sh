#!/usr/bin/env bash
#
# Sets up requirements to provision with ansible
#

#
# Clean display function
#
# usage:
#        display "My thing to output"
#
function display() {
    echo "-----> $1"
}

if [ ! `which pip` ]
then
    display "Installing pip"
    sudo easy_install pip
fi

if [ ! `which ansible` ]
then
    display "Installing ansible"
    sudo pip install ansible
fi

if [ ! `which brew` ]
then
    display "Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
