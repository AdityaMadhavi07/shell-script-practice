#!/bin/bash


dir=$1
cnt=0
while IFS= read -r files; do
    if mv "$files" bkp/; then
        (( cnt++ ))
    fi
done <<(find "$dir" -type f -name "*.log")





echo "$cnt files were moved to bkp folder"
