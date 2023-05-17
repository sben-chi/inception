#!/bin/sh

/etc/init.d/mysql start;

mysql -u root -e "CREATE DATABASE wordpress;";

mysql -u root;

#tail -f;