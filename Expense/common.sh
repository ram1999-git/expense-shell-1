userid=$(id -u)
Timestamp=$(date +%F-%H-%M-%S)
Script_Name=$(echo $0 .sh)
Logfile=/tmp/$Script_Name-$Timestamp.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

read -sp "Please Enter DB Root Password: " mysql_root_password
echo

validate() {
    if [ $1 -ne 0 ]; then 
        echo -e "$2...$R Failure $N"
        exit 1
    else
        echo -e "$2...$G Success $N"
    fi 
}

check_root(){

if [ $userid -ne 0 ]; then
    echo -e "$R Please run the script with root access $N"
    exit 1
else 
    echo -e "$G You are super user $N"
fi
}