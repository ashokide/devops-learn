#!/usr/bin/env bash

# function to check the sudo access
check_sudo_access() {
    # checks the user id of the current process
    if [[ "$(id -u)" -eq 0 ]]
    then
        echo "$0 is running with sudo access"
    else
        echo "$0 is not running with sudo access"
    fi
}

check_sudo_access
