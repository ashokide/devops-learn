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

# function with and without argument
hello_world() {
  # Check if an argument is provided
  if [ $# -eq 0 ]; then
    echo "Hello, World!"
  else
    echo "Hello, $1!"
  fi
}

# Call the function with an argument
hello_world "$USER"

# Call the function without an argument
hello_world
