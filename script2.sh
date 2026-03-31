#!/bin/bash 
# Script 2: FOSS Package Inspector 
# Author: Riddhima Singh | Course: Open Source So ware 
# Purpose: Checks if a package is installed, finds its version, 
# 		and prints a philosophy note about it 
# --- The package we are inspecting --- 
PACKAGE="git" 
# --- Check if git is installed using command subs tu on --- 
GIT_PATH=$(which $PACKAGE 2>/dev/null) 
# --- if-then-else to check if package exists --- 
if [ -n "$GIT_PATH" ]; then 
echo "================================" 
echo " Package Inspector: $PACKAGE" 
echo "================================" 
echo "Status  : Installed" 
    echo "Location: $GIT_PATH"                      # Where the binary lives 
    echo "Version : $(git --version)"               # Gets version via command subs tu on 
    echo "License : GPL v2" 
    echo "Summary : Distributed version control system created by Linus Torvalds" 
    echo "================================" 
else 
    echo "$PACKAGE is NOT installed on this system." 
fi 
# --- case statement: prints philosophy note based on package name --- 
case $PACKAGE in 
    git) 
        echo "Git: born from necessity when proprietary tools failed the open source world" 
        ;; 
    httpd) 
        echo "Apache: the web server that built the open internet" 
        ;; 
    mysql) 
        echo "MySQL: open source at the heart of millions of apps" 
        ;; 
    vlc) 
        echo "VLC: built by students who just wanted to watch movies freely" 
        ;; 
    firefox) 
        echo "Firefox: a nonprofit's fight to keep the web open for everyone" 
        ;; 
    *) 
        echo "Unknown package — but if it's open source, it stands on shared founda ons" 
        ;; 
esac