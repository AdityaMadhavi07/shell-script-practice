#!/bin/bash

dir=$1
cnt=0

while IFS= read -r files;do
	chmod +x "$files"
	if [[ $? -eq 0 ]]; then
	 ((cnt++)) 
	fi 

done < <(find "$dir" -type f -name "*.sh" )

echo "$cnt files where made executable."
