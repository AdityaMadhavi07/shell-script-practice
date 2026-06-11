#!/bin/bash
if [[ "$EUID" -ne 0 ]]; then
	echo "Run the script with ROOT user"
	exit 1
else
	for pkg in nginx curl wget; do
    		if dpkg -s "$pkg" >/dev/null 2>&1 || rpm -q "$pkg" >/dev/null 2>&1; then
        		echo "$pkg is already installed.."
			sleep 2
			systemctl status "$pkg" >/dev/null 1>&2
    		else
        	echo "installing $pkg......"
        	sleep 2
        	apt install -y "$pkg" >/dev/null 2>&1
        	echo "$pkg installed"
    		fi
		done
fi
