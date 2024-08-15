#!/usr/bin/env bash

# exit on error, any non zero return code
set -e

# debug mode
set -x

# exit on pipe file
set -o pipefail

# declare variables
declare name=root
name=superuser

# lowercase variable
declare -l lowercase="Root User"
# uppercase variable
declare -u uppercase="Root User"
# readonly variable
declare -r PI=3.14

# display on terminal
echo $name

# new line
echo;

echo $lowercase
echo $uppercase
echo $PI

# no new line
echo -n "no new line"
