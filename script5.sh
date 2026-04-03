#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo "------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose the paragraph [cite: 199-200]
echo "MY OPEN SOURCE MANIFESTO" > "$OUTPUT"
echo "Created on: $DATE" >> "$OUTPUT"
echo "------------------------------------------" >> "$OUTPUT"
echo "I believe in the power of tools like $TOOL." >> "$OUTPUT"
echo "To me, software freedom is synonymous with $FREEDOM." >> "$OUTPUT"
echo "I commit to building $BUILD and sharing it with the world." >> "$OUTPUT"

echo "------------------------------------------"
echo "Manifesto saved to $OUTPUT"
cat "$OUTPUT"
