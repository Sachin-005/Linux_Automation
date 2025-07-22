#!/bin/bash

username="newclient"
email="admin@example.com"
password=$(openssl rand -base64 12)

useradd -m -s /bin/bash "$username"
echo "$username:$password" | chpasswd

subject="New client account created: $username"
body="Username: $username\nPassword: $password\nTimestamp: $(date)"

echo -e "$body" | mail -s "$subject" "$email"
