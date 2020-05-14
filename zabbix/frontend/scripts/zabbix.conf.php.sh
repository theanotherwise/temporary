#!/bin/bash

DB_SRV_TYPE=POSTGRESQL
DB_SRV_ADDR=172.20.1.21
DB_SRV_PORT=5432
DB_SRV_NAME=zabbix-servera
DB_SRV_SCHEMA=zabbix-server
DB_SRV_USER=zabbix-server
DB_SRV_PASS=zabbix-server

ZBX_SRV_ADDR=172.20.1.31
ZBX_SRV_PORT=10051
ZBX_SRV_NAME=zabbix-server

sed -i "s/DB_SRV_TYPE/$DB_SRV_TYPE/g" /var/www/html/conf/zabbix.conf.php                                                                
sed -i "s/DB_SRV_ADDR/$DB_SRV_ADDR/g" /var/www/html/conf/zabbix.conf.php                                                                
sed -i "s/DB_SRV_PORT/$DB_SRV_PORT/g" /var/www/html/conf/zabbix.conf.php                                                                
sed -i "s/DB_SRV_NAME/$DB_SRV_NAME/g" /var/www/html/conf/zabbix.conf.php                                                                
sed -i "s/DB_SRV_SCHEMA/$DB_SRV_SCHEMA/g" /var/www/html/conf/zabbix.conf.php                                                            
sed -i "s/DB_SRV_USER/$DB_SRV_USER/g" /var/www/html/conf/zabbix.conf.php                                                                
sed -i "s/DB_SRV_PASS/$DB_SRV_PASS/g" /var/www/html/conf/zabbix.conf.php                                                                
sed -i "s/ZBX_SRV_ADDR/$ZBX_SRV_ADDR/g" /var/www/html/conf/zabbix.conf.php                                                              
sed -i "s/ZBX_SRV_PORT/$ZBX_SRV_PORT/g" /var/www/html/conf/zabbix.conf.php                                                              
sed -i "s/ZBX_SRV_NAME/$ZBX_SRV_NAME/g" /var/www/html/conf/zabbix.conf.php
