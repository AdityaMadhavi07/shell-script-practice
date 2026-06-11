#!/bin/bash

#set -euo pipefail

hello(){
    name=Alex_Local
    local age=23
}


hello
echo "name is $name"
echo "age is $age"
