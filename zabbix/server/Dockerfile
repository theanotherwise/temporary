FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive 

WORKDIR /zabbix

COPY ./archives/zabbix-5.0.0.tar.gz .
RUN groupadd zabbix
RUN useradd -m -d /opt/zabbix -s /bin/bash -g zabbix zabbix
RUN useradd -m -d /opt/zabbix/server -s /bin/bash -g zabbix zabbix-server

RUN apt-get update

RUN apt-get install -y gcc make
RUN apt-get install -y libcurl4 libssl-dev libldap2-dev curl libcurl4-openssl-dev postgresql-server-dev-all libxml2-dev unixodbc-dev libsnmp-dev libssh2-1-dev libopenipmi-dev libevent-dev

RUN tar -xf zabbix-5.0.0.tar.gz

RUN apt-get install -y autoconf

RUN cd zabbix-5.0.0 && ./configure --prefix=/opt/zabbix/server --enable-server \
--with-postgresql \
--with-libxml2 \
--with-unixodbc \
--with-net-snmp \
--with-ssh2 \
--with-openipmi \
--with-zlib \
--with-libpthread \
--with-libevent \
--with-openssl \
--with-ldap \
--with-libcurl \
--with-libpcre \
--with-iconv && make && make install

RUN rm -rf zabbix-5.0.0.tar.gz && rm -rf zabbix-5.0.0

RUN mv /opt/zabbix/server/etc/zabbix_server.conf /opt/zabbix/server/etc/zabbix_server.conf_BACKUP
RUN cat /opt/zabbix/server/etc/zabbix_server.conf_BACKUP | grep "Default:" -A 1 | grep -v "Default:" | grep -v "\-\-" > /opt/zabbix/server/etc/zabbix_server.conf

RUN mkdir -p /opt/zabbix/$ZABBIX/log && mkdir -p /opt/zabbix/$ZABBIX/tmp

RUN chmod 750 /opt/zabbix

RUN find /opt/zabbix -mindepth 1 -exec chmod g-rwx,o-rwx {} \;
RUN find /opt/zabbix -exec chown -R zabbix:zabbix {} \;

RUN find /opt/zabbix/server -exec chmod g-rwx,o-rwx {} \;
RUN find /opt/zabbix/server  -exec chown -R zabbix-server {} \;
