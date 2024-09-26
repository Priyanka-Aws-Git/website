FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN echo "ServerName localhost"
ADD . /var/www/html
ENTRYPOINT ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
