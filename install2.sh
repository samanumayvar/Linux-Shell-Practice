#!/bin/bash
USERID=$(id -u)
if [ "$USERID" -ne 0 ]; then
    echo "ERROR: Please run this script with root access."
    exit 1
fi
if [$? -eq 0 ]; then
    echo "You are running as root user."
    yum install -y mariadb105-server
    exit 0
    
    echo "MariaDB server installed successfully."

else
    echo "you are not running with root access."
    exit 1
fi