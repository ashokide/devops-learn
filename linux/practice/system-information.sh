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
printf "Disk                : %s\n" "$(df / -h | awk 'NR > 1 { print "Used: "$4 " Total: " $2 }')"
