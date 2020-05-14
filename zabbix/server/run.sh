#!/bin/bash

docker run --network zabbix --ip 172.20.1.31 --env-file ./env -itd zabbix-server
