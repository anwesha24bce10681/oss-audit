#!/bin/bash
# Script 4: Log File Analyzer
LOGFILE=$1
KEYWORD=${2:-"error"} # Defaults to 'error' if not provided [cite: 171]
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Use a while-read loop to process the file [cite: 177-182]
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Print last 5 matching lines [cite: 184]
echo "------------------------------------------"
echo "Last 5 matches for '$KEYWORD':"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
