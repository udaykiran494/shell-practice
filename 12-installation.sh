#!/bin/bash 

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo " ERROR:: PLEASE RUN THE SCRIPT WITH ROOT PRIVELEGE"    
    exit 1 # failure is other than 0
fi

dnf install -y mysql

if [ $? -ne 0 ];
then
echO "ERROR:: INSTALLING MYSQL IS FAILURE"
exit 1
else
    echO "installing mysql is success"
fi