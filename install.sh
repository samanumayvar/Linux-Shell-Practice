#!/bin/bash
USERID=$(id -u)
echo "Current user ID: $USERID"
if [ $USERID -ne 0 ]; then
    echo "This script must be run as root."
    exit 1
fi
echo "You are running as root user."

echo "Installing MySQL server..."
yum install -y mysql-server
if [ $? -ne 0 ]; then
    echo "Failed to install MySQL server."
    exit 1
fi
echo "MySQL server installed successfully."