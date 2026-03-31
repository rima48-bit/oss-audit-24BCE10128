#!/bin/bash 
# Script 4: Log File Analyzer 
# Author: Riddhima Singh | Course: Open Source So ware 
# Purpose: Reads a log file line by line, counts keyword 
#          matches, and prints a summary with the last 5 matching lines 
# Usage: bash script4.sh <logfile> <keyword> 

# --- Command line arguments --- 
LOGFILE=$1            
# First argument: path to log file 
KEYWORD=${2:-"ERROR"} # Second argument: keyword to search (default: ERROR) 
COUNT=0               
# Counter variable star ng at zero 

# --- Check if file exists --- 
if [ ! -f "$LOGFILE" ]; then 
echo "Error: File '$LOGFILE' not found." 
exit 1 
fi 
# --- while read loop: reads file line by line --- 
while IFS= read -r LINE; do 
# if-then: check if line contains the keyword (case insensi ve) 
if echo "$LINE" | grep -iq "$KEYWORD"; then 
COUNT=$((COUNT + 1))  # Increment counter 
fi 
done < "$LOGFILE" 
# --- Print summary --- 
echo "================================" 
echo " Log File Analyzer" 
echo "================================" 
echo "File    : $LOGFILE" 
echo "Keyword : $KEYWORD" 
echo "Count   : $COUNT occurrences found" 
echo "================================" 
# --- Print last 5 matching lines --- 
echo " Last 5 matching lines:" 
echo "---" 
grep -i "$KEYWORD" "$LOGFILE" | tail -5 
echo "================================"