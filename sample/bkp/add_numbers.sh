#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "please provide the numbers in argument" 
    exit 1
fi 

if [[ $? -eq 0 ]]; then
    
    ans=0
    for num in $@; do
        ans=$((ans+$num))
    done 
fi 
echo "the sum of the numbers is $ans"
