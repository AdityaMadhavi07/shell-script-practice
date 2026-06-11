#!/bin/bash

echo    "if-else practice"

read -p "enter the player score: " num  

if [[ $num -gt 100 ]]; then
    echo "player scored a century"
else
    echo "player scored less than a century"
fi
