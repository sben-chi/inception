#!/bin/sh

/etc/init.d/php7.3-fpm start;

cd /var/www/html/sben-chi_site/;

# Download WordPress core and plugins.
#composer install -n --no-dev
wp core download --allow-root;

## Default DB name and user.
wp config create --allow-root --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${MYSQL_HOST};

## Install a basic site. The title doesn't matter.
wp core install --allow-root --url="sben-chi.42.fr" --title="first website" --admin_user="sben-chi_admin" --admin_password=" " --admin_email="sben-chi@example.com" --skip-email;

wp user create --allow-root "sben-chi" "sben-chi_user@example.com" --user_pass=" ";
## Language.
#wp language core install de_DE;


sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/' /etc/php/7.3/fpm/pool.d/www.conf;

php-fpm7.3 -F;
#php-fpm7.3: run in the background as a daemon, listening for CGI requests
#-F: Force to stay in foreground and ignore daemonize option from configuration file.
#	-> https://linux.die.net/man/8/php-fpm
