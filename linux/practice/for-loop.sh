#/usr/bin/env bash

# loop through all files and directories in the current directory
for found in *
do 
	echo "Found: $found"
done

# loop through all arguments
for arg in "$@"
do
    echo "Argument: $arg"
done

# loop through range of numbers
for ((i=1; i<=5; i++))
do
    echo "Iteration: $i"
done
