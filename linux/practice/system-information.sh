#!/bin/bash

# Get User Type
get_user_type() {
    if [[ $(id -u) -eq 0 ]]; then
        user_type="Root"
    else
        user_type="Non-Root"
    fi
}

get_user_type

#System Information
echo "System Information"
echo "--------------------"
printf "Username            : %s\n" "$(whoami)"
printf "Hostname            : %s\n" "$(hostname)"
printf "User Type           : %s\n" $user_type
printf "Operating System    : %s\n" $(uname -o) 
printf "Architecture        : %s\n" $(uname -m)
printf "Kernel Version      : %s\n" $(uname -r) 
printf "Uptime              : %s\n" "$(uptime -p)"
printf "Disk                : %s\n" "$(df / -h | awk 'NR > 1 { print "Total: " $2 " Used: "$3 " Free: "$4  }')"
