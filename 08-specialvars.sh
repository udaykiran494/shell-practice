#!/bin/bash

echo "ALL variables passed to the script": $* 
echo "ALL variables passed to the script " : $@

echo "script name: $0"
echo "current directory: $PWD"
echo "who is running the script: $USER"
echO "home directory of the user : $HOME"
echo " what is pid of script : $$"
sleep 10 & 
echo "pid of the last command in background is : $!"