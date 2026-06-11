#!/bin/bash


read -p "enter the file to be searched: " filename 
echo "finding $filename..."

if [ -f $filename ] ; then
	echo "file exists"
else
	echo "file not found"
fi
