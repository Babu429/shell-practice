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

for package in $@
do
dnf list installed $package &>>LOGS_FILE
if [ $? -ne 0 ]; then
    dnf install $package -y &>>LOGS_FILE
    VALIDATE $? "$package"
else
    echo " $package is Already Exists!! "
fi
done 