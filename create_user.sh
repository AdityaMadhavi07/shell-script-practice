#!/bin/bash

create_user(){
    read -p "enter the new username: " username
    # if [[ id "$username" ]]; then # this is wrong as we cannot add command execution in if 
    if id "$username" &>/dev/null; then
        echo "user already exist"
    fi 
    sudo useradd -m "$username" && echo "new user "$username" created" || echo "user could not be created"
}

create_user
