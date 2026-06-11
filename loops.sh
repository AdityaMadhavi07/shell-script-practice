#!/bin/bash

<<comment
echo "this is for loop"

for i in {1..10}
do
    echo "the value of i is $i"
done

comment

<<forloop
for i in alpha beta gamma
do 
    echo "creating 3 files in current directory..."
    touch $i.txt
    echo "created 3 files"
    ls -lrt
done

forloop


echo "only few seconds left"
echo "beginning count down...."

num=10
while [[ $num -gt 0 ]]
do 
    echo $num
    ((num--))
    sleep 1

done

echo "rocket launched....🚀"
