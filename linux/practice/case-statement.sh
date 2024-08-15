#!/usr/bin/env bash

# read input
read -p "enter user id: " userid

# match the input
case $userid in
	0) echo "Root user is here";;
	[1-9][0-9][0-9][0-9]*) echo "Regular user is here";;
	*) echo "unknown user is here";;
esac
