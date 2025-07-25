#!/bin/bash

read -sp "Please Enter DB Root Password: " mysql_root_password
echo

source ./common.sh


check_root()
 
dnf install mysql-server -y &>>$Logfile

validate $? "Installing MySQL Server"

systemctl enable mysqld &>>$Logfile
validate $? "Enabling MySQL service"

systemctl start mysqld &>>$Logfile
validate $? "Starting MySQL service"

# Check if password is already set
mysql -h 172.31.91.208 -uroot -pExpenseApp@1 < /app/schema/backend.sql &>>$Logfile
if [ $? -ne 0 ]; then
    echo "Setting up MySQL root password..."
    mysql_secure_installation --set-root-pass "${mysql_root_password}" &>>$Logfile
    validate $? "MySQL root password setup"
else 
    echo -e "MySQL root password is already set...$Y Skipping $N"
fi
