USERID=$(id -u)
LOGS_FOLDER="/var/log/script-logs"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1)
LOGS_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"
mkdir -p $LOGS_FOLDER
echo "Script Started executed at : $(date)"

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
dnf list installed mysql &>>LOGS_FILE
if [ $? -ne 0 ]; then
    dnf install mysql -y &>>LOGS_FILE
    VALIDATE $? "MySQL"
else
    echo " My SQL is Already Exists!! "
fi

dnf list installed nginx &>>LOGS_FILE
if [ $? -ne 0 ]; then
    dnf install nginx -y &>>LOGS_FILE
    VALIDATE $? "Nginx"
else
    echo " Ngnix is Already Exists!! "
fi

dnf list installed python3 &>>LOGS_FILE
if [ $? -ne 0 ]; then
    dnf install python3 -y &>>LOGS_FILE
    VALIDATE $? "python3"
else
    echo " Python3 is Already Exists!! "
fi