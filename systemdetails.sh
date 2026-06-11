echo "System details:"
# free cmd gives Ram info, awk = text processing tool, NR line number, 
check_memory(){
    free -h | awk 'NR==2{print "Available memory: " $7}' #NR==2 means it takes 2nd row and 7th column
}

check_storage(){
    df -h / | awk 'NR==2 {print "Available disk: " $4}' 
}

top_process(){  #ps = process status, a= all users, u= user format, x=include bg process also, --sort used for sorting , - used for decsending order, + for acsending order, %mem memory usage, 
    ps aux --sort=-%mem | awk 'NR==2 {print "Top memory process: user="$1" pid="$2" mem%=" $4}'
}


check_memory
check_storage
top_process
