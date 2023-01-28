Maintainer : Anil Soni
Date Created On : 28th Jan 2023

# This is a simple shell script with an argument input option of version to install tomcat

#!/bin/bash
tomcat_req_vers=$1
major_vers=$(echo "$tomcat_req_vers" | cut -d '.' -f 1)
sudo wget https://dlcdn.apache.org/tomcat/tomcat-${major_vers}/v${tomcat_req_vers}/bin/apache-tomcat-${tomcat_req_vers}.tar.gz
tar -xvzf apache-tomcat-${tomcat_req_vers}.tar.gz
mv apache-tomcat-${tomcat_req_vers} tomcat${major_vers}
rm -rf apache-tomcat-${tomcat_req_vers}.tar.gz
