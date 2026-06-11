#!/bin/bash

read -p "enter the file name: " file_name

	if [[ -f "$file_name" ]]; then 
		echo "file found"
	else
		echo "file not found"
	fi
