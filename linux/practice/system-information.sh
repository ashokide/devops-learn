#!/bin/bash

#System Information
echo "System Information"
echo "--------------------"
printf "Username            : %s\n" "$(whoami)"
printf "Hostname            : %s\n" "$(hostname)"
printf "Operating System    : %s\n" $(uname -o) 
printf "Architecture        : %s\n" $(uname -m)
printf "Kernel Version      : %s\n" $(uname -r) 
printf "Uptime              : %s\n" "$(uptime -p)"
