FROM ubuntu:18.04

ARG DB_SRV_NAME
ARG DB_SRV_USER

ENV DEBIAN_FRONTEND=noninteractive 

WORKDIR /zabbix

RUN apt-get update
RUN apt-get install -y postgresql

COPY ./archives/zabbix-5.0.0.tar.gz .

RUN tar -xf zabbix-5.0.0.tar.gz

COPY ./files/pg_hba.conf /etc/postgresql/10/main/pg_hba.conf

RUN sed -i "s/DB_SRV_NAME/$DB_SRV_NAME/g" /etc/postgresql/10/main/pg_hba.conf
RUN sed -i "s/DB_SRV_USER/$DB_SRV_USER/g" /etc/postgresql/10/main/pg_hba.conf

RUN cat /etc/postgresql/10/main/pg_hba.conf

RUN chmod 640 /etc/postgresql/10/main/pg_hba.conf && chown postgres:postgres /etc/postgresql/10/main/pg_hba.conf

RUN echo "listen_addresses = '*'" >> /etc/postgresql/10/main/postgresql.conf

USER postgres

RUN /etc/init.d/postgresql start && \
     psql -c "CREATE ROLE \"$DB_SRV_NAME\";" && \
     psql -c "CREATE DATABASE \"$DB_SRV_NAME\";" && \
     psql -c "ALTER DATABASE \"$DB_SRV_NAME\" OWNER TO \"$DB_SRV_NAME\";" && \
     psql -c "GRANT ALL PRIVILEGES ON DATABASE \"$DB_SRV_NAME\" TO \"$DB_SRV_NAME\";" && \
     psql -c "ALTER ROLE \"$DB_SRV_NAME\" LOGIN;" && \
     psql -c "ALTER ROLE \"$DB_SRV_NAME\" PASSWORD '$DB_SRV_NAME';" && \
     psql -c "ALTER DATABASE \"$DB_SRV_NAME\" SET search_path=\"$DB_SRV_NAME\";" && \
     psql -d "$DB_SRV_NAME" -c "DROP SCHEMA \"public\";" && \
     psql -d "$DB_SRV_NAME" -c "CREATE SCHEMA \"$DB_SRV_NAME\";" && \
     psql -d "$DB_SRV_NAME" -c "ALTER SCHEMA \"$DB_SRV_NAME\" OWNER TO \"$DB_SRV_NAME\";" && \
     psql -d "$DB_SRV_NAME" -c "GRANT ALL PRIVILEGES ON SCHEMA \"$DB_SRV_NAME\" TO \"$DB_SRV_NAME\";" && \
     PGPASSWORD="$DB_SRV_NAME" psql -h localhost -U "$DB_SRV_NAME" "$DB_SRV_NAME" < /zabbix/zabbix-5.0.0/database/postgresql/schema.sql && \
     PGPASSWORD="$DB_SRV_NAME" psql -h localhost -U "$DB_SRV_NAME" "$DB_SRV_NAME" < /zabbix/zabbix-5.0.0/database/postgresql/images.sql && \ 
     PGPASSWORD="$DB_SRV_NAME" psql -h localhost -U "$DB_SRV_NAME" "$DB_SRV_NAME" < /zabbix/zabbix-5.0.0/database/postgresql/data.sql

RUN ls -lh
# RUN rm -f zabbix-5.0.0.tar.gz && rm -rf zabbix-5.0.0

# USER root
# RUN apt-get install -y iproute2 iputils-ping curl telnet net-tools
# RUN ip a
    
CMD ["/usr/lib/postgresql/10/bin/postgres", "-D", "/var/lib/postgresql/10/main", "-c", "config_file=/etc/postgresql/10/main/postgresql.conf"]
