#!/bin/bash

read -p "Enter your number: " num

if [[ num -gt 0 ]]; then
	echo "Number entered is Positive"
elif [[ num -eq 0 ]]; then
	echo "Number entered is Zero"
else
	echo "Number entered is Negetive"
fi
