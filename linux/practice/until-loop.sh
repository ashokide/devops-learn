#!/usr/bin/env bash

# program to guess the random number between 1 and 10

# read inputs
declare -i input
declare -i randomno
read -p "guess a number between 1 and 10: " input

# loop will execute until the condition is true
until [[ $input -eq -1 ]]
do
    # generate random number between 1 and 10
	randomno=$(( 1 + RANDOM % 10))
	if [[ $randomno -eq $input ]]
	then
		echo "you guessed correctly"
	else
		echo "wrong guess, try again"
	fi
	read -p "guess a number between 1 and 10: " input
done
