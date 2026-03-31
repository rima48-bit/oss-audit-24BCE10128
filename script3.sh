#!/bin/bash 
# Script 3: Disk and Permission Auditor 
# Author: Riddhima Singh | Course: Open Source So ware 
# Purpose: Loops through key directories and reports 
#          their permissions, owner, and size 
# --- List of directories to audit --- 
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp") 
echo "================================" 
echo " Directory Audit Report" 
echo "================================" 
# --- for loop: iterates through each directory --- 
for DIR in "${DIRS[@]}"; do 
if [ -d "$DIR" ]; then 
# Extract permissions and owner using ls and awk 
PERMS=$(ls -ld "$DIR" | awk '{print $1}')   # e.g. drwxr-xr-x 
OWNER=$(ls -ld "$DIR" | awk '{print $3}')   # e.g. root 
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1) # e.g. 4.0K 
        echo "Directory : $DIR" 
        echo "Permission: $PERMS" 
        echo "Owner     : $OWNER" 
        echo "Size      : $SIZE" 
        echo "---" 
    else 
        echo "$DIR does not exist on this system" 
        echo "---" 
    fi 
done 
echo "================================" 
echo " Git Config Directory Check" 
echo "================================" 
# --- Check if git's config file exists in home directory --- 
GIT_CONFIG="$HOME/.gitconfig" 
if [ -f "$GIT_CONFIG" ]; then 
    PERMS=$(ls -la "$GIT_CONFIG" | awk '{print $1}') 
    echo "Git config found at : $GIT_CONFIG" 
    echo "Permissions         : $PERMS" 
else 
    echo "No global git config found at $GIT_CONFIG" 
fi