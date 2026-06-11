#!/bin/bash

#read -p "Enter your name: " name
#read -p "What is your favourite tool? " tool
#echo "Hello $name, your favourite tool is $tool"

if [[ -z "$1" ]]; then
	echo "Usage:./greet.sh"
else 
	echo "Hello, $1"
fi
