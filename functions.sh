#!/bin/bash
set -euo pipefail

greet(){
    read -p "Enter your good name: " name
    echo "Hello, $name!"
}

add(){
    read -p "Enter 1st number: " num1
    read -p "Enter 2nd number: " num2
    ans=$((num1+num2))
    echo "sum of the numbers is: $ans "
}

greet
add
