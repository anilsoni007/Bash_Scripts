# Maintainer: Anil Soni
# This is a simple shell script to manage web app with command line arguments

#!/bin/bash
user_id=$(id -u)
if [[ ${user_id} -eq 0 ]]
then
  echo " you are root user"
else
  echo "sorry you are not root user!"
fi

read -p "plz enter your input: " user_action


case $user_action in
    start)
           echo "starting httpd....."
           systemctl status httpd &> /dev/null || systemctl start httpd  ;;
    stop)
           echo "stopping httpd..."
           systemctl status httpd &> /dev/null && systemctl stop httpd   ;;
    status)
            echo "checking the status of httpd..."
            systemctl status httpd                                       ;;
    *)
            echo "you passed invalid input, plz enter valid inputs which are as follows: "
            echo "start/stop/status"                                     ;;
esac

