#!/bin/sh

/etc/init.d/mysql start;
mkdir -p /run/mysqld;
chown -R mysql:mysql /run/mysqld;

mysql -u root -e "CREATE DATABASE ${MYSQL_DATABASE} ;\
				CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}'; \
				GRANT ALL PRIVILEGES ON wordpress.* TO '${MYSQL_USER}'@'%' ; FLUSH PRIVILEGES;"

/etc/init.d/mysql stop;

#mysqld --user=root;
mysqld --bind-address=0.0.0.0;