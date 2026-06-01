#!/bin/bash 

USERID=$(id -u)

if [ "$USERID" -ne 0 ]; then
    echo "ERROR: Please run this script with root access."
    exit 1
fi

echo "You are running as root user."

rpm -qa | grep -i mariadb105-server &>/dev/null

if [ $? -eq 0 ]; then
    echo "MariaDB server is already installed."
    exit 0
else
    echo "Installing MariaDB server..."

    yum install -y mariadb105-server

    if [ $? -eq 0 ]; then
        echo "MariaDB server installed successfully."
    else
        echo "Failed to install MariaDB server."
        exit 1
    fi
fi
if [ $? -eq 0 ]; then
    echo "MariaDB server is already installed."
else
    echo "Failed to install MariaDB server."        
    exit 1
fi
if [ $? -ne 0 ]; then
    echo "MariaDB server is already installed."
else
    echo "Failed to install MariaDB server."        
    exit 1
fi