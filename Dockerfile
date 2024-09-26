FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
ADD . /var/www/html
ENTRYPOINT ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
