FROM ubuntu:16.04
MAINTAINER Victor victorucan31@gmail.com
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN apt-get install wget -y
RUN apt-get install unzip -y
RUN wget https://github.com/BlackrockDigital/startbootstrap-freelancer/archive/gh-pages.zip
RUN unzip gh-pages.zip
RUN cp -a startbootstrap-freelancer-gh-pages/* /var/www/html
EXPOSE 8080
CMD /usr/sbin/apache2ctl -D FOREGROUND
