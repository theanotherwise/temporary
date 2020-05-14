#!/bin/bash

DB_SRV_TYPE=POSTGRESQL
DB_SRV_ADDR=172.20.1.21
DB_SRV_PORT=5432
DB_SRV_NAME=zabbix-servera
DB_SRV_SCHEMA=zabbix-server
DB_SRV_USER=zabbix-server
DB_SRV_PASS=zabbix-server

sed -i "s/DB_SRV_TYPE/$DB_SRV_TYPE/g" /opt/zabbix/server/etc/zabbix_server.conf
sed -i "s/DB_SRV_ADDR/$DB_SRV_ADDR/g" /opt/zabbix/server/etc/zabbix_server.conf
sed -i "s/DB_SRV_PORT/$DB_SRV_PORT/g" /opt/zabbix/server/etc/zabbix_server.conf
sed -i "s/DB_SRV_NAME/$DB_SRV_NAME/g" /opt/zabbix/server/etc/zabbix_server.conf
sed -i "s/DB_SRV_SCHEMA/$DB_SRV_SCHEMA/g" /opt/zabbix/server/etc/zabbix_server.conf
sed -i "s/DB_SRV_USER/$DB_SRV_USER/g" /opt/zabbix/server/etc/zabbix_server.conf
sed -i "s/DB_SRV_PASS/$DB_SRV_PASS/g" /opt/zabbix/server/etc/zabbix_server.conf
