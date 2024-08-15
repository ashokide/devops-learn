#!/usr/bin/env bash

# read inputs
read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3

# determine which number is the greatest
if [ $num1 -gt $num2 ]; then
    if [ $num1 -gt $num3 ]; then
        echo "The greatest number is $num1"
    else
        echo "The greatest number is $num3"
    fi
else
    if [ $num2 -gt $num3 ]; then
        echo "The greatest number is $num2"
    else
        echo "The greatest number is $num3"
    fi
fi
