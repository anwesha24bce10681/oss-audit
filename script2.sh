#!/bin/bash
# Script 2: FOSS Package Inspector
PACKAGE="vlc"

# Check if package is installed (using dpkg for Debian/Ubuntu)
if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|License|Description'
else
    echo "$PACKAGE is NOT installed. Use 'sudo apt install vlc' to install it."
fi

# Philosophy section
case $PACKAGE in
    vlc) 
        echo "Philosophy: VLC was built by students to liberate video streaming and play anything." ;;
    git) 
        echo "Philosophy: Git is the tool Linus built when proprietary version control failed him." ;;
    firefox) 
        echo "Philosophy: A nonprofit-driven browser fighting for an open and accessible web." ;;
    *) 
        echo "FOSS tools empower the user with the four fundamental freedoms." ;;
esac
