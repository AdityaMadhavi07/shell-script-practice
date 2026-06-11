#!/bin/bash
if [[ $# -eq 0 ]]; then
    echo "please provide the numbers in argument" 
    exit 1
fi 

if [[ $? -eq 0 ]]; then
            
    ans=0
    while [[ $# -gt 0 ]]; do
        num=$1
        ans=$((ans+$num))
        shift
    done 
fi 
echo "the sum of the numbers using WHILE Loop is $ans"
