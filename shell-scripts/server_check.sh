#!/bin/bash

read -p "enter the service name: " service_name

read -p "do you want to check the status? (Y/N) " ans

if [[ "$ans" == "Y" ]]; then
	systemctl status "$service_name"
else
	echo "skipped"
fi
