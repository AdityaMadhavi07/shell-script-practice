#!/bin/bash

set -e

mkdir /tmp/devops-test || echo "Directory already exists"

cd /tmp/devops-test

touch file.txt 
echo "this is sample file" >> file.txt


cat file.txt

ls -l file.txt

