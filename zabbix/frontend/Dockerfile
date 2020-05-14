FROM ubuntu:18.04

ARG DB_SRV_ADDR
ARG DB_SRV_NAME
ARG DB_SRV_PASS
ARG DB_SRV_PORT
ARG DB_SRV_SCHEMA
ARG DB_SRV_TYPE
ARG DB_SRV_USER
ARG ZBX_SRV_NAME
ARG ZBX_SRV_ADDR
ARG ZBX_SRV_PORT

ENV DEBIAN_FRONTEND=noninteractive 

WORKDIR /zabbix

RUN apt-get update
RUN apt-get install -y apache2 libapache2-mod-php php php-gd php-xml php-bcmath php-mbstring php-pgsql php-ldap

COPY ./archives/zabbix-5.0.0.tar.gz .                                                                                                       
RUN tar -xf zabbix-5.0.0.tar.gz

RUN cp -R ./zabbix-5.0.0/ui/* /var/www/html
RUN rm -f /var/www/html/index.html

COPY ./files/zabbix.conf.php /var/www/html/conf/zabbix.conf.php
RUN chmod 644 /var/www/html/conf/zabbix.conf.php

RUN sed -i "s/DB_SRV_TYPE/$DB_SRV_TYPE/g" /var/www/html/conf/zabbix.conf.php                                                                    
RUN sed -i "s/DB_SRV_ADDR/$DB_SRV_ADDR/g" /var/www/html/conf/zabbix.conf.php                                                                    
RUN sed -i "s/DB_SRV_PORT/$DB_SRV_PORT/g" /var/www/html/conf/zabbix.conf.php                                                                    
RUN sed -i "s/DB_SRV_NAME/$DB_SRV_NAME/g" /var/www/html/conf/zabbix.conf.php                                                                    
RUN sed -i "s/DB_SRV_SCHEMA/$DB_SRV_SCHEMA/g" /var/www/html/conf/zabbix.conf.php                                                                
RUN sed -i "s/DB_SRV_USER/$DB_SRV_USER/g" /var/www/html/conf/zabbix.conf.php                                                                    
RUN sed -i "s/DB_SRV_PASS/$DB_SRV_PASS/g" /var/www/html/conf/zabbix.conf.php                                                                    
RUN sed -i "s/ZBX_SRV_ADDR/$ZBX_SRV_ADDR/g" /var/www/html/conf/zabbix.conf.php                                                                  
RUN sed -i "s/ZBX_SRV_PORT/$ZBX_SRV_PORT/g" /var/www/html/conf/zabbix.conf.php                                                                  
RUN sed -i "s/ZBX_SRV_NAME/$ZBX_SRV_NAME/g" /var/www/html/conf/zabbix.conf.php

# RUN apt-get install -y iproute2 iputils-ping curl telnet net-tools
# ip a

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
