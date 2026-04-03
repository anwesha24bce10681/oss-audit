#!/bin/bash
# Script 1: System Identity Report
# Author: Anwesha Rout
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Anwesha Rout"
SOFTWARE_CHOICE="VLC Media Player"
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DISTRO=$(grep "PRETTY_NAME" /etc/os-release | cut -d= -f2 | tr -d '"')
CURRENT_DATE=$(date)

# --- Display ---
echo "=========================================="
echo "      $SOFTWARE_CHOICE - Open Source Audit"
echo "=========================================="
echo "Student: $STUDENT_NAME"
echo "Registration: 24BCE10681"
echo "------------------------------------------"
echo "Distro : $DISTRO"
echo "Kernel : $KERNEL"
echo "User   : $USER_NAME ($HOME_DIR)"
echo "Uptime : $UPTIME"
echo "Date   : $CURRENT_DATE"
echo "------------------------------------------"
echo "This system is powered by Linux, licensed under the GPL v2."
echo "=========================================="
