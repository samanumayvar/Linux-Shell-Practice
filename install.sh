#!/bin/bash

USERID=$(id -u)

if [ "$USERID" -ne 0 ]; then
    echo "ERROR: Please run this script with root access."
    exit 1
fi

echo "You are running as root user."

echo "Installing MySQL server..."

dnf install mysql -y 

if [ $? -eq 0 ]; then
    echo "MySQL server installed successfully."
else
    echo "Failed to install MySQL server."
    exit 1
fi