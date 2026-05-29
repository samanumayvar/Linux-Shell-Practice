#!/bin/bash
USERID=$(id -u)
if [ "$USERID" -ne 0 ]; then
    echo "ERROR: Please run this script with root access."
    exit 1
fi

 yum install -y mariadb105-server

if [$? -ne 0 ]; then
    echo "failed to install MariaDB server."
    exit 1
else
    echo "MariaDB server installed successfully."
fi