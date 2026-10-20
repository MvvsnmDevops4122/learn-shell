#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 1 ]; then
    echo "Please run this script with sudo access.."
fi

echo "proceeding...."
dnf install nginx -y



