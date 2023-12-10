FROM mariadb:latest

COPY ./init/init.sql /docker-entrypoint-initdb.d/

VOLUME [ "/var/lib/mysql" ]
