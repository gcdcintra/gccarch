#!/bin/sh
# Personal archlinux installer with custom configuration
# License: GPLv3
# Author: Gustavo Cintra - gccintra <gustavocdcintra@gmail.com>

### VARIABLES ###

packages="packages.csv"
aurhelper="yay"


### FUNCTIONS ###

initMsg() {
	whiptail --title "Welcome!" \
		--msgbox "gccarch - ArchLinux custom installation!" 10 60
}

inputUser() {
    user = $(whiptail --title "User" \
        --inputbox "Enter your username:" 10 60 3>&1 1>&2 2>&3)
    if [ $? -eq 0 ]; then
        echo "User: $user"
    else
        echo "User: canceled"
        exit 0
    fi
}

inputPassword() {
    passwd = $(whiptail --title "Password" \
        --passwordbox "Enter your password:" 10 60 3>&1 1>&2 2>&3)
    if [ $? -eq 0 ]; then
        echo "Password: $password"
    else
        echo "Password: canceled"
        exit 0
    fi
}


### SCRIPT ###

# Check if running on Arch Linux as root. If not, exit.
if [ "$EUID" -ne 0 ]; then
    echo "This script must be run as root. Aborting."
    exit 1
fi

initMsg | exit 1
inputUser | exit 1
inputPass | exit 1
