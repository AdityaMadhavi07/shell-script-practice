#!/bin/bash

dir=$1
cnt=0

while IFS= read -r files_to_del; do
    if rm "$files_to_del"; then
        ((cnt++))
    fi
done <<(find "$dir" -type f -name "*.txt" -mtime +5 2>/dev/null)

echo "$cnt these many files were deleted."
