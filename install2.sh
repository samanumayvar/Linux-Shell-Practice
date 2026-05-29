#!/bin/bash
#!/bin/bash

USERID=$(id -u)

if [ "$USERID" -ne 0 ]; then
    echo "ERROR: Please run this script with root access."
    exit 1
fi

if yum install -y mariadb105-server; then
    echo "MariaDB server installed successfully."
else
    echo "Failed to install MariaDB server."
    exit 1
fi