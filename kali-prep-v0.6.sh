#!/usr/bin/env bash

###########################################################################
# Kali Prep Script
# Version 0.6
# Author: con0101
# https://github.com/con0101
# Notes:
# This script is specifically designed to be used with the
#  VMware Virtual Machine Kali 2025.4 w/no use or mods.
#
# Usage: kali-prep-v0.6.sh [-d | --debug] [-i | --hidip ]  [-i]
# Usage: kali-prep-v0.6.sh [options]
# Command Options:
#  --help                            Show the help
#  --debug                           Enable Debugging Output (Default is Disabled)
#  --enable-hidpi | --disable-hidpi  Enable or Disable HIDPI Mode (Default is to Ask)
#  --enforce-osv  | --skip-osv       Enforce or Skip OS Version Checking (Default is to check,
 #                                                                   then ask to skip, or exit)
#
# $ sudo kali-prep-v0.6.sh
# $ sudo kali-prep-v0.6.sh --debug --enable-hidpi --skip-osv
###########################################################################
SHOW_HELP=false
DEBUG_MODE=false
OS_VERSION_CHECK="ask"
HIDPI="ask"

while [[ $# -gt 0 ]]; do
  case "$1" in
    -h|--help)
      SHOW_HELP=true
      shift 1
      ;;
    --debug)
      DEBUG_MODE=true
      shift 1
      ;;
    --hidpi)
      HIDPI="$2"
      HIDPI="${HIDPI,,}"
      shift 2
      ;;
    --os-version-check)
      OS_VERSION_CHECK="$2"
      OS_VERSION_CHECK="${OS_VERSION_CHECK,,}"
      shift 2
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
done

echo "SHOW_HELP: $SHOW_HELP"
echo "DEBUG_MODE: $DEBUG_MODE"
echo "HIDPI: $HIDPI"
echo "OS Check: $OS_VERSION_CHECK"

# Validate Command Line Options:
if [[ "$HIDPI" != "yes" && "$HIDPI" != "no" && "$HIDPI" != "ask" ]]; then
    echo "ERROR: --hidpi value must be yes|no|ask, you provided: $HIDPI"
    exit 1
fi
if [[ "$OS_VERSION_CHECK" != "yes" && "$OS_VERSION_CHECK" != "no" && "$OS_VERSION_CHECK" != "ask" ]]; then
    echo "ERROR: --os-version-check value must be yes|no|ask, you provided: $OS_VERSION_CHECK"
    exit 1
fi

# Check if running as root, if not message the user and quit:
if [[ $EUID -ne 0 ]]; then
   echo "ERROR: This script must be run as root. Please use sudo or login as root." 
   exit 1
fi

###########################################################################
# Check if OS Version is supported
###########################################################################
OS_VERSION_FILE="/etc/os-release"
OS_VERSION_PASS=true

if [[ $OS_VERSION_CHECK != "no" ]]; then
  if [[ ! -f "$OS_VERSION_FILE" || ! -r "$OS_VERSION_FILE" ]]; then
      echo "Error: $OS_VERSION_FILE does not exist or is not readable."
      OS_VERSION_PASS=false
  fi
  
  # Check if File is Readable
  if [[
  if [[  ]]; then
      echo "Error: $OS_VERSION_FILE is not readable."
      OS_VERSION_PASS=false
  fi
fi






