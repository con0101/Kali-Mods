#!/usr/bin/env bash

###########################################################################
# Kali Prep Script
# Version 0.6
# Author: con0101
# https://github.com/con0101
# Notes:
# This script is specifically designed to be used with
#                                       VMware Virtual Machine Kali 2025.4.
###########################################################################

# Check if running as root, if not message the user and quit:
if [[ $EUID -ne 0 ]]; then
   echo "ERROR: This script must be run as root. Please use sudo or login as root." 
   exit 1
fi

echo "--> Updating APT..."
apt update
#echo "--> Upgrading Kali..."
#apt upgrade -y

echo "--> Installing General Packages..."
echo "------> gdb: "
apt install -y gdb gdb-doc gdbserver libc-dbg
echo "------> ghidra: "
apt install -y ghidra
echo "------> CyberChef: "
apt install -y cyberchef
echo "------> pwntools: "
apt install -y python3-pwntools
echo "------> pyftpdlib: "
apt install -y python3-pyftpdlib
echo "------> jq: "
apt install -y jq
echo "------> ncat: "
apt install -y ncat
echo "------> rlwrap: "
apt install -y rlwrap
echo "------> seclists: "
apt install -y seclists

echo "--> Local Copies of Common Tools/Utilities..."

echo "------> Privilege Escalation Awesome Scripts SUITE new generation (PEASS-ng)"
git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git /usr/share/PayloadsAllTheThings/

echo "------> Nishang (Offensive Powershell Framework)"
git clone https://github.com/samratashok/nishang.git /usr/share/nishang/

echo "--> Tweaks..."

echo "------> VIM Settings..."
sudo -u kali rm -f /home/kali/.vimrc
sudo -u kali echo "filetype plugin on" >> /home/kali/.vimrc
sudo -u kali echo "syntax on" >> /home/kali/.vimrc
sudo -u kali echo "set number" >> /home/kali/.vimrc
sudo -u kali echo "set list" >> /home/kali/.vimrc

echo "------> Modify ll alias to show hidden files in zsh and bash..."
sudo -u kali sed -i "s/^alias ll=.*/alias ll='ls -lah'/" /home/kali/.zshrc
sudo -u kali sed -i "s/^alias ll=.*/alias ll='ls -lah'/" /home/kali/.bashrc

echo "Script Complete"
