#!/bin/bash

# Text Manipulation

# create csv file
touch "sample-data.csv"

# insert data
echo "name,type" >> sample-data.csv
echo "apple,fruit" >> sample-data.csv
echo "tomato,vegetable" >> sample-data.csv
echo "grapes,fruit" >> sample-data.csv

# print first column without first row
awk -F "," 'NR > 1 { print $1 }' sample-data.csv
