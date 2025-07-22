#!/bin/bash
# Set the threshold value for disk usage percentage
threshold=80
# Get the disk usage information using df
disk_info=$(df -h /)
# Parse the output to extract the usage percentage
usage_percent=$(echo "$disk_info" | awk 'NR==2{print $5}' | sed 's/%//')
# Compare the usage percentage with the threshold value
if [ $usage_percent -gt $threshold ]; then
    # If the usage percentage exceeds the threshold, send an email notification
    echo "Disk usage is currently at $usage_percent%, which exceeds the threshold of $threshold%." | mail -s "Disk Space Alert" admin@example.com
fi
