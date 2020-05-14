#!/bin/bash

docker run --env-file env.list --network zabbix --ip 172.20.1.11 -p 127.0.0.1:8080:80/tcp -itd zabbix-frontend
