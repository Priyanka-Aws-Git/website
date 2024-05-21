# base image/os image
FROM ubuntu
#Update server with update command
RUN apt-get update -y
#Install pache2 webserver
RUN apt-get install apache2 -y
#Copy file current location to apache2 default location
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
