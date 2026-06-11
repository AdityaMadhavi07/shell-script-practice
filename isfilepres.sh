#!/bin/bash


echo "this took a argument and then ran the script"

echo "finding the presence of $1 in the directory
.
.
.
.
.
.
.
."

if [ -f $1 ] ; then
	echo "file $1 found!!"
else
	echo "file not found"
fi


