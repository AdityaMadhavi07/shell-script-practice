#!/bin/bash

for char in rohit virat dhoni bhuvi; do
	echo "Indian team: $char"
	echo "-----------------------"
done


echo "----"

echo "glob pattern.....:"

for file in ./*.sh; do
	echo "these are the files present: $file "
done
