# Linux System Automation Project Overview

Linux system administrators are more productive when they create shell programs that automate their tasks. The more automation we have in place, the more time we have available to fix real problems when they occur and to contemplate how to automate even more. Instead of typing the same group of commands on the command line, it is better to automate them by adding them to a script.

Linux server automation is the process of automating the provisioning, patching, scheduling, security, compliance, and other Linux-based tasks across virtual and physical servers. Most large enterprises employ Linux system infrastructure. To efficiently manage them, IT administrators must monitor, update, and secure the servers to ensure that they are operating at their best.

---

## Problem Statement

Linux does not have a built-in backup tool, which adds complexity to the backup process. As a result, Linux administrators need to customize their Linux infrastructure initially to fit their environment. Though Linux automation is achieved by using bash shell scripts in most cases, we attempt to enhance the process of automation by scheduling CRON jobs with the help of an open-source tool, ANSIBLE.

---

## Vision

The vision of our project is to automate the following Linux administrative tasks using bash shell scripts and ANSIBLE:

- **Disk Space Status**
- **File Backup System**
- **Killing Stale Processes**
- **User Account Creation**
- **Updating Clients' Login Credentials**

---

## Features

### Disk Space Status
A script that monitors disk space usage and sends alerts when disk space is running low.

### File Backup System
A script to automate the backup of important files and directories to a specified location.

### Killing Stale Processes
A script to identify and kill stale processes that are consuming system resources unnecessarily.

### User Account Creation
A script to automate the creation of new user accounts with predefined settings and permissions.

### Updating Clients' Login Credentials
A script to update and manage clients' login credentials securely.

---

## Tools and Technologies

- **Bash Shell Scripts**: For writing automation scripts.
- **CRON**: For scheduling periodic tasks.
- **ANSIBLE**: An open-source tool for automating software provisioning, configuration management, and application deployment.
