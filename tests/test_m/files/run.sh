#!/bin/sh

etc/init.d/mysql start;

mysql -u root -e "CREATE DATABASE $MYSQL_DATABASE ; \
				CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';";

mysql -u root;