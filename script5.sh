#!/bin/bash 
# Script 5: Open Source Manifesto Generator 
# Author: Riddhima Singh | Course: Open Source So ware 
# Purpose: Asks the user three ques ons interac vely and generates 
#          a personalised open source philosophy statement saved to a file 
# --- Alias concept: a shorter name for echo (demonstrated via comment) --- 
# In a real shell session you could run: alias say="echo" 
# Here we use a func on to demonstrate the same idea 
say() { echo "$1"; } 
say "" 
say "============================================" 
say " Welcome to the Open Source Manifesto Generator" 
say "============================================" 
say "" 
# --- read: gets input from the user interac vely --- 
read -p "1. Name one open-source tool you use every day: " TOOL 
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM 
read -p "3. Name one thing you would build and share freely: " BUILD 
# --- date command to mestamp the manifesto --- 
DATE=$(date '+%d %B %Y') 
# --- Output filename using string concatena on --- 
OUTPUT="manifesto_$(whoami).txt" 
# --- Write manifesto to file using > and >> --- 
echo "Open Source Manifesto" > "$OUTPUT" 
echo "Generated on: $DATE" >> "$OUTPUT" 
echo "============================================" >> "$OUTPUT" 
echo "" >> "$OUTPUT" 
# --- Compose paragraph using the three variables --- 
echo "I believe in the power of open source." >> "$OUTPUT" 
echo "Every day I rely on $TOOL — a tool built openly and shared freely by" >> "$OUTPUT" 
echo "people who believed that knowledge belongs to everyone." >> "$OUTPUT" 
echo "" >> "$OUTPUT" 
echo "To me, freedom means $FREEDOM." >> "$OUTPUT" 
echo "That is the same freedom that open source so ware protects —" >> "$OUTPUT" 
echo "the freedom to use, study, modify, and share without restric on." >> "$OUTPUT" 
echo "" >> "$OUTPUT" 
echo "If I could build and share one thing freely, it would be $BUILD." >> "$OUTPUT" 
echo "Because standing on the shoulders of giants means giving back" >> "$OUTPUT" 
echo "so that others can stand on yours." >> "$OUTPUT" 
echo "" >> "$OUTPUT" 
echo "============================================" >> "$OUTPUT" 
# --- Confirm and display the saved manifesto --- 
say "" 
say "Manifesto saved to $OUTPUT" 
say "" 
cat "$OUTPUT" 