#!/bin/bash
# Script 3: Disk and Permission Auditor
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "------------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, and group [cite: 157]
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get human-readable size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system."
    fi
done

echo "------------------------------------------"
# Audit VLC specific config directory [cite: 162]
VLC_CONFIG="$HOME/.config/vlc"
if [ -d "$VLC_CONFIG" ]; then
    echo "VLC Config Directory found at $VLC_CONFIG"
    echo "Permissions: $(ls -ld $VLC_CONFIG | awk '{print $1}')"
else
    echo "VLC Config Directory not found. Run VLC once to generate it."
fi
