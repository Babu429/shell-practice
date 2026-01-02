#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR :: This script should run with root privileges"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "MySQL installation is failed"
else
    echo "Installing MySql is SUCCESS"
fi