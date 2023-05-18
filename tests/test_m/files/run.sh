#!/bin/sh

/etc/init.d/mysql start;

mysql -u root -e "CREATE DATABASE wordpress ; \
				CREATE USER sben-chi@localhost IDENTIFIED BY ' '; \
				GRANT ALL PRIVILEGES ON wordpress.* TO sben-chi@localhost ;\
				FLUSH PRIVILEGES;";

ping localhost;

#tail -f;