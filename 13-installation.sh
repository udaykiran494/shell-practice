#!/bin/bash 

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo " ERROR:: PLEASE RUN THE SCRIPT WITH ROOT PRIVELEGE"    
    exit 1 # failure is other than 0
fi


VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo  "ERROR:: INSTALLING $2 IS FAILURE"
    exit 1
    else
        echo "installing $2 is sucess"
    fi
}

dnf install -y mysql
VALIDATE $? "MYSQL"

dnf install nginx -y
VALIDATE $? "Nginx"

dnf install python3 -y
VALIDATE $? "Python3"
