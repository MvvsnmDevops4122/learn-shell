#!/bin/bash

user_id=$(id -u)
logs_folder="/var/log/learn-shell"
logs_file="${logs_folder}/${0}.log"

mkdir -p $logs_folder  #if filder is exit won't create folder, if not exist then create folder

if [ $user_id -ne 0 ]; then
    echo "Please run this script with sudo access.."
    exit 1
fi

echo "script execution started at $(date +"%F %T")" &>> $logs_file #If the file is not exist then create file and write the content, if file is exist then append the content to the file    

validate (){
    if [ $1 -ne 0 ]; then
        echo "${2}..FAILED" | tee -a $logs_file
        exit 1
    else
        echo "${2}..SUCCESS" | tee -a $logs_file
    fi
}

dnf install nginx -y &>> $logs_file
validate $? "Nginx installation"    

dnf install mysql -y &>> $logs_file
validate $? "mysql client installation"

echo "script execution completed at $(date +"%F %T")" &>> $logs_file
