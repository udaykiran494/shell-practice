 #!/bin/bash 

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo " ERROR:: PLEASE RUN THE SCRIPT WITH ROOT PRIVELEGE"    
    exit 1 # failure is other than 0
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo -e "INSTALLING $2 ... $R FAILURE $N"
    exit 1
    else
        echo -e "installing $2 ... $R is success $N"
    fi
}

dnf list installed mysql
#install if it is not found
if [ $? -ne 0 ]; then
    dnf install -y mysql
    VALIDATE $? "MYSQL"
else 
    echo -e " mysql already exist ... $Y skipping $N "
fi

dnf list installed nginx
#install if it is not found
    if [ $? -ne 0 ]; then
        dnf install nginx -y
        VALIDATE $? "Nginx"
    else 
    echo -e "nginx already exist ... $Y skipping $N "
fi

dnf list installed python3
#install if it is not found
    if [ $? -ne 0 ]; then
        dnf install python3 -y
        VALIDATE $? "Python3"

    else 
    echo -e " python3 already exist ... $Y skipping $N "
fi
