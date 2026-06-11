#!/bin/bash

read -p "give a number: " num
	while [[ num -gt 0 ]]; do
		echo $num
		((num--))
		sleep 1
done




	echo "Done!"
