#1/bin/bash

echo "Dsipay the variables : $@"
echo "Dsipay the variables : $*"

echo "Script Name is :: $0"
echo "Current Directory is :: $PWD"
echo "Home Directory is :: $HOME"
echo "USER Name is :: $USER"
echo "process pid: $$"
sleep 50 &
echo "process pid for ;ast executed command: $!"
# ps -ef | grep sleep to find the sleep command process id's