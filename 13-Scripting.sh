#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR :: This script should run with root privileges"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "MySQL installation is failed"
    exit 1
else
    echo "Installing MySql is SUCCESS"
fi