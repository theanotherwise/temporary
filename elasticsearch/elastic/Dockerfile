FROM ubuntu:18.04

ARG DB_SRV_ADDR

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /zabbix

RUN apt-get update
RUN apt-get install -y wget

RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.7.0-amd64.deb

RUN dpkg -i elasticsearch-7.7.0-amd64.deb

RUN cat /etc/elasticsearch/elasticsearch.yml

CMD ["service", "elasticsearch", "start"]
