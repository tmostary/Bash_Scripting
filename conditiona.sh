#!/bin/bash

read -p "Enter a Number:" num

if [[ $num -gt 0 ]]; then    # Executes commands if condition is true.

    echo "Number is Postive"

elif [[ $num -lt 0 ]]; then  # Checks another condition if the first one is false.

    echo "Number is Negative"

else                         # Executes commands if none of the conditions are met.

    echo "Number is Null"

fi


# System Health Monitoring

CPU_Theshold=80
MEMORY_Threshold=75
DISK_Threshold=80

cpu_usage=85
memory_usage=70
disk_usage=80


if [[ $cpu_usage -gt $CPU_Threshold ]]; then

    echo "⚠️ CPU usage is HIGH: $cpu_usage% (Threshold: $CPU_Threshold%)"

else

    echo "✅ CPU usage is OK: $cpu_usage%"

fi

if [[ $memory_usage -gt $MEMORY_Threshold ]]; then

    echo "⚠️ Memory usage is HIGH: $memory_usage% (Threshold: $MEMORY_Threshold%)"

else

    echo "✅ Memory usage is ok: $memory_usage%"
fi

if [[ $disk_usage -ge $DISK_Threshold ]]; then

    echo "⚠️  Disk usage is HIGH: $disk_usage: (Threshold:$DISK_Threshold%)"

fi


# File Existence Check

LOG_FILE="/var/log/auth.log"

if [[ -f "$LOG_FILE" ]]; then

    echo "Processing $LOG_FILE...."

else

    echo "Error: $LOG_FILE not found!"

fi
