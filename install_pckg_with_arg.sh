#!/bin/bash
if [[ $(id -u) -ne 0 ]]
then
        echo "you need to be root user to run the script"
        exit 1
else
        echo "executing the script...."
fi

for each in $@
do
  which $each >/dev/null
  if [[ $? -eq 0 ]]
  then
          echo " $each is already installaed !!"
  else
          echo " installing $each"
          apt install $each -y
  fi
done
