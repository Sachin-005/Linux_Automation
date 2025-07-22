#!/bin/bash
# Backup settings
backup_dir="/mnt/backup"
backup_exclude="/var/log"
backup_log="/var/log/backup.log"
timestamp=$(date +%Y%m%d%H%M%S)

# Create backup directory if it doesn't exist
if [ ! -d "$backup_dir" ]; then
  mkdir -p "$backup_dir"
fi

# Perform backup using rsync
rsync -av --delete --exclude="$backup_exclude" / "$backup_dir/backup-$timestamp" >> "$backup_log" 2>&1

# Send backup confirmation email
echo "The backup of the file system was successful." | mail -s "Backup successful" admin@example.com
