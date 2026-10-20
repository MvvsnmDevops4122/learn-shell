#!/bin/bash

echo "All args passed to the script : $@"
echo "Number of arguments passed to the script : $#"
echo "The name of the script is : $0"
echo "The first argument passed to the script is : $1"
echo "The second argument passed to the script is : $2"
echo "realpath of the script is : $(realpath $0)"
echo "who is executing the script : $USER"
echo "Directory of the current script is : $PWD"
echo "Home directory of the current user is : $HOME"
echo "The process ID of the current script is : $$"