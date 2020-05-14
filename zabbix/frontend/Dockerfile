FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive 

WORKDIR /zabbix

RUN apt-get update
RUN apt-get install -y apache2 libapache2-mod-php php php-gd php-xml php-bcmath php-mbstring php-pgsql php-ldap

COPY ./archives/zabbix-5.0.0.tar.gz .                                                                                                       
RUN tar -xf zabbix-5.0.0.tar.gz
RUN cp -R ./zabbix-5.0.0/ui/* /var/www/html

COPY ./files/zabbix.conf.php /var/www/html/conf/zabbix.conf.php
RUN chmod 644 /var/www/html/conf/zabbix.conf.php

RUN rm -f /var/www/html/index.html

COPY ./files/php.ini /etc/php/7.2/apache2/php.ini
RUN chmod 644 /etc/php/7.2/apache2/php.ini

COPY ./scripts/zabbix.conf.php.sh .
RUN /bin/bash zabbix.conf.php.sh

# RUN apt-get install -y iproute2 iputils-ping curl telnet net-tools
# ip a

#CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
