#!/bin/bash

# Set the process name to check and the maximum allowed runtime in seconds
process_name="httpd"
max_runtime=3600 # 1 hour

# Check if the process is running
if pgrep "$process_name" > /dev/null; then
    # Get the start time of the process
    start_time=$(ps -o lstart= -p $(pgrep "$process_name"))

    # Calculate the runtime of the process
    start_seconds=$(date -d "$start_time" +%s)
    current_seconds=$(date +%s)
    runtime=$((current_seconds - start_seconds))

    # Compare the runtime with the maximum allowed runtime
    if [ "$runtime" -gt "$max_runtime" ]; then
        # Kill the process
        pkill "$process_name"

        # Log the termination of the stale process and the current date and time
        echo "$(date +"%Y-%m-%d %H:%M:%S") - $process_name process terminated (runtime: $runtime seconds)" >> /var/log/stale-process.log
    fi
else
    # Log the absence of the process and the current date and time
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $process_name process not found" >> /var/log/stale-process.log
fi

