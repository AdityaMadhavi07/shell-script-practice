#!/bin/bash
set -euo pipefail

hostos_info(){
    echo "hostname: "
    hostname
}

osinfo(){
    echo "Os info: "
    cat /etc/os-release | awk 'NR==2, NR==4'
}

show_uptime(){
    echo "Uptime:"
    uptime -p
}

disk_usage(){
    du -sh | sort -hr | head -5
}

memory_usage(){
    free -h
}

cpu_comsuming_proc(){
    ps aux --sort=-%cpu | head -6
}

main(){
    echo "Displaying the Hostname and OS info: "
    hostos_info
    osinfo
    
    echo "----------------------------"
    sleep 1
    
    show_uptime

    echo "----------------------------"
    sleep 1
    
    echo "Disk usage: (top-5)"
    disk_usage
    
    echo "----------------------------"
    sleep 1
    
    echo "Memory Usage: "
    memory_usage
    
    echo "----------------------------"
    sleep 1
    
    echo "Top 5 CPU-consuming processes: "
    cpu_comsuming_proc
}

main
