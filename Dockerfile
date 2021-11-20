# Pull base image 
From victorucan/tomcat-vsm:1 

# Maintainer 
MAINTAINER "victorucan31@gmail.com" 
COPY webapp/target/devops.war /usr/local/tomcat/webapps
