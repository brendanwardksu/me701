#!/bin/bash

#if Trash already exists, do nothing. If not, create the directory
if ls /home/brendanward/Trash* 1> /dev/null 2>&1; then
     :
else
     mkdir /home/brendanward/Trash
fi

a=$(locate $1)

echo We found the file here:
locate $1 
read -r -p "Are you sure you want to move it to Trash? [Y/n]" response #in case it isn't the right file
response=${response,,}
if [[ $response =~ ^(yes|y| ) ]] || [[ -z $response ]]; then
     mv $a /home/brendanward/Trash
fi



