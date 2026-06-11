#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "type in the file name properly: $0 <file-path>" 
    exit 1
fi 

if [[ -f $1 ]]; then #-f checks for the regular file
    echo "$1 file present"
else
    echo "$1 file not present"
fi 
