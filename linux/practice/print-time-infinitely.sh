#!/usr/bin/env bash

# program to print time infinitely
# date +%T -> %H:%M:%S

while true
do
    clear
    echo $(date +%T)
    sleep 1
done
