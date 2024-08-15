#!/usr/bin/env bash

# associative array
declare -A containerData

# key value pairs
containerData[PORT]=3000
containerData[SECRET_KEY]="secret key"

# iterate through the array 
for key in "${!containerData[@]}"
do
    echo "$key=${containerData[$key]}"
    
    # write the data to file
	  echo "$key=${containerData[$key]}" >> .env 
done

