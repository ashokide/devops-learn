#!/usr/bin/env bash

# program to print star pattern

for i in {1..5}
do
    for (( j=1; j<=i; j++ ))
    do
        printf "* "
    done
    printf "\n"
done
