#!/bin/bash
# Script 1: System Identity Report
# Author: Riddhima Singh | Course: Open Source Software

STUDENT_NAME="Riddhima Singh"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME="N/A (upme not supported on this pla orm)"
DATE=$(date '+%d %B %Y %T') # Gets current date and me 
DISTRO=$(uname -o)           
# Gets the OS name

echo "================================" 
echo " Open Source Audit — $STUDENT_NAME" 
echo "================================" 
echo "Soware Choice : $SOFTWARE_CHOICE" 
echo "OS              : $DISTRO" 
echo "Kernel Version  : $KERNEL" 
echo "Logged in as    : $USER_NAME" 
echo "Uptime          : $UPTIME"
echo "Date/Time        : $DATE" 
echo "================================" 
echo "This system runs on the Linux kernel," 
echo "which is licensed under GPL v2 —" 
echo "the same license as Git itself." 
echo "================================"