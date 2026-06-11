#!/bin/bash

echo "hello"

read -p " what is your age?  "  age

if [[ $age -gt 18 ]];  then
	echo "you can drive"
elif [[ $age -eq 18 ]]; then
	read -p "have you applied for DL? " ans
		if [[ $ans == yes ]]; then
			echo "ok all the best!"
		else
			echo "apply it soon"
		fi
else
	echo "you cannot drive, as you dont have DL!"

fi


