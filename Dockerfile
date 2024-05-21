# base image/os image
FROM ubuntu/apache2
#Update server with update command
RUN apt-get update -y
#Install pache2 webserver

#Copy file current location to apache2 default location
ADD . /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
