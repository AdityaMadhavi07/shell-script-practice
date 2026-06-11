#!/bin/bash

#input and validation-----task 1

if [[ $# -eq 0 ]]; then
    echo "No argument provided"
    exit 1
fi

file="$1"

if [[ ! -f "$file" ]]; then
    echo "File - $file does not exist"
    exit 1
fi

#error count----------------------------------task 2-------------------------------------

error_count=$(grep -c "ERROR" "$file")
failed_count=$(grep -c "FAILED" "$file")

total_error_count=$((error_count + failed_count))
echo "total error count = $total_error_count"

#critical events-------------------------------------task 3------------------------------------

echo "----------Critical Events----------"

grep -ni "critical" "$file"


#Top error message--------------------------------task 4----------------------------------------------


echo "extracting error messages into a file..."
sleep 2

error_lines= grep -n "ERROR" "$file"



error_path="/home/ubuntu/90DaysOfDevOps/week2/logs/error.log"

echo "$error_lines" > "$error_path"


echo -e "\n\n"

echo "****error.log file is created on $(date), you can find it in : $error_path"
sleep 2
echo 
ls -l error.log
echo -e "\n"
echo "-----top 5 error messages-----"
sleep 2
crisp_output=$(grep -i "error" "$file" | awk '{$1=$2=$3=$4=$5=$6=$7=$8=$9=""; print}')

unique_sorting=$(echo "$crisp_output" | sort | uniq -c)

descending_order=$(echo "$unique_sorting" | sort -rn | head -n 5)

echo "$descending_order"

echo -e "\n\n  Script ends....  \n\n"

