#!/bin/bash

dir=$1

cnt=0

while IFS= read -r files;do
	rm "$files"
	if [[ $? -eq 0 ]]; then
	((cnt++))
	fi

 
done < <(find "$dir" -type f -name "*.sh" -empty )


echo "$cnt empty scripts were deleted"
