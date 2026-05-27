#!/bin/bash
USERID=$(id -u)
echo "Current user ID: $USERID"
if [ $USERID -ne 0 ]; then
    echo "This script must be run as root."
    exit 0
fi