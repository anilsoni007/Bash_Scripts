# Maintainer: Anil Soni
# This is a simple shell script to manage web app with command line arguments

#!/bin/bash
user_id=$(id -u)
if [[ ${user_id} -eq 0 ]]
then
  echo " you are root user"
else
  echo "sorry you are not root user bro!!"
fi

read -p "plz enter your input: " user_action

if [[ $user_action == "start" ]]
then
    echo "starting httpd....."
    systemctl status httpd &> /dev/null || systemctl start httpd
elif [[ $user_action == "stop" ]]
then
     echo "stopping httpd..."
     systemctl status httpd &> /dev/null && systemctl stop httpd
elif [[ $user_action == "status" ]]
then
     echo "systemctl status httpd"
else
     echo "plz pass valid input bro!!!"
fi
