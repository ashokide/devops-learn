#!/usr/bin/env bash

# get command line options
while getopts u:p: options
do
    # match the options
	case $options in 
		u) echo "username: $OPTARG";;
		p) echo "password: $OPTARG";;
		*) echo "invalid option";;
	esac
done
