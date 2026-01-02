#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR :: This script should run with root privileges"
    exit 1
fi

VALIDATE(){
if [ $1 -ne 0 ]; then
    echo "$2 installation is failed"
    exit 1
else
    echo "Installing $2 is SUCCESS"
fi
}
dnf install mysql -y
VALIDATE $? "MySQL"

dnf install nginx -y
VALIDATE $? "Nginx"

dnf install python3 -y
VALIDATE $? "python3"