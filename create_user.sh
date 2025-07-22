#!/bin/bash
# Collect the required information for the new user account
username="newuser"
full_name="New User"
group="users"
# Generate a secure password for the new user account
password=$(openssl rand -base64 12)

# Create the new user account
useradd -m -s /bin/bash -G "$group" -c "$full_name" "$username"
# Set the password for the new user account
echo "$password" | passwd --stdin "$username"
# Log the creation of the new user account and the current date and time
echo "$(date +"%Y-%m-%d %H:%M:%S") - User account created: $username" >> /var/log/user-account.log
