#!/bin/bash

log_file="var/log/maintenance.log"

log(){
	echo "$(date '+%Y-%m-%d %H:%M:%S') : $1" >> "$LOG_FILE"

}

log "running log rotation"

/home/ubuntu/log_rotate.sh >> "$log_file" 2>&1

log "running backup"

/home/ubuntu/backup.sh >> "$log_file" 2>&1

echo "" >> "$log_file"
