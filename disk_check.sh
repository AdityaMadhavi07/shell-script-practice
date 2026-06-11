#!/bin/bash
set -euo pipefail

check_disk(){
	used=$(df -h| awk 'NR==2 {print $3}')
 echo "disk usage is $used"

}

#check_disk



check_memory(){
    free_memory=$(free -h | awk 'NR==2 {print $4}')
    echo "free memory is: $free_memory"
}

#check_memory

main(){
    echo " Providing the Disk Details..."
    sleep 1
    check_disk
    sleep 1
    check_memory
}

main
