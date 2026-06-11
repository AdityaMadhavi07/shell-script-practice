#!/bin/bash

set -euo pipefail

log_dir="$1"


if [[ -z "$log_dir" ]]; then
    echo "No directory name provided."
    exit 1
fi

if [[ -d "$log_dir" ]]; then
    echo "directory does not exist"
    exit 1
fi 

compressed_count=0
deleted_count=0


while IFS= read -r files_to_del; do
    gzip "$files_to_del"
    if [[ $? -eq 0 ]]; then
    (( compressed_count++ ))
    fi
done< <(find "$dir" -type f -name "*.log" -mtime +7)

while IFS= read -r deleting_files; do
    rm "$deleting_files"
    if [[ $? -eq 0 ]]; then
    ((deleted_count++))
    fi
done< <(find "$dir" -type f -name "*.gz" -mtime +30)


echo "$compressed_count files were compressed and $deleted_count were deleted."
