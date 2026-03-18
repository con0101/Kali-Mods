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
DEBUG_MODE=false

# Check if running as root, if not message the user and quit:
if [[ $EUID -ne 0 ]]; then
   echo "ERROR: This script must be run as root. Please use sudo or login as root." 
   exit 1
fi


echo
echo " ##### Installing Standard Packages #####"
echo
echo "##### gdb #####"
apt install -y gdb gdb-doc gdbserver libc-dbg
echo
if $DEBUG_MODE; then
    read -p "Press any key..."
fi
echo
echo "##### ghidra #####"
apt install -y ghidra
echo
if $DEBUG_MODE; then
    read -p "Press any key..."
fi
echo
echo "##### pwntools #####"
apt install -y python3-pwntools
echo
if $DEBUG_MODE; then
    read -p "Press any key..."
fi
echo
echo "##### pyftpdlib #####"
apt install -y python3-pyftpdlib
echo
if $DEBUG_MODE; then
    read -p "Press any key..."
fi
echo
echo "##### jq #####"
apt install -y jq
echo
if $DEBUG_MODE; then
    read -p "Press any key..."
fi
echo
echo "##### ncat #####"
apt install -y ncat
echo
if $DEBUG_MODE; then
    read -p "Press any key..."
fi
echo
echo "##### rlwrap #####"
apt install -y rlwrap
echo
if $DEBUG_MODE; then
    read -p "Press any key..."
fi
echo
echo "##### seclists #####"
apt install -y seclists
echo
if $DEBUG_MODE; then
    read -p "Press any key..."
fi
echo

echo "Script Complete"
