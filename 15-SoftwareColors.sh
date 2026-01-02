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
dnf list installed mysql
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MySQL"
else
    echo " My SQL is Already Exists!! "

dnf list installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "Nginx"
else
    echo " Ngnix is Already Exists!! "

dnf list installed python3
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo " Python3 is Already Exists!! "