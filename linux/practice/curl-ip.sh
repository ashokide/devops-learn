#!/usr/bin/env bash

# function to get ip
get_ip() {
    if ip=$(curl -s "https://ifconfig.me"); then
        echo "$ip"
    else
        echo "Error: Unable to fetch ip" >&2
    fi
}

get_ip
