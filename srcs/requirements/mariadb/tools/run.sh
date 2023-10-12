#!/bin/sh

/etc/init.d/mysql start;
mkdir -p /run/mysqld;
chown -R mysql:mysql /run/mysqld;

mysql -u root -e "CREATE DATABASE ${DB_NAME} ;\
				CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}'; \
				GRANT ALL PRIVILEGES ON wordpress.* TO '${DB_USER}'@'%' ; FLUSH PRIVILEGES;"

/etc/init.d/mysql stop;

#mysqld --user=root;
mysqld --bind-address=0.0.0.0;