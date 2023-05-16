#!/bin/sh


/etc/init.d/php7.3-fpm start;
cp -r ./wordpress/* /var/www/sben-chi_site/
#cd /var/www/html/sben-chi_site
#wp core download --allow-root
#wp config create --allow-root --dbname=${MYSQL_DATABASE}  --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${MYSQL_HOST}
#wp core install --allow-root --url=${DOMAIN} --title=Inception --admin_user=${WPA_USER} --admin_password=${WPA_PW}  --admin_email=${WPA_EMAIL} --skip-email
#wp user create --allow-root $WW_USER $WP_EMAIL --user_pass=$WP_PW

sed -i 's/\/run\/php\/php7\.3-fpm\.sock/wordpress:9000/g' /etc/php/7.3/fpm/pool.d/www.conf
#sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/' /etc/php/7.3/fpm/pool.d/www.conf;

php-fpm7.3 -R -F;

#tail -f;

#php-fpm7.3: run in the background as a daemon, listening for CGI requests
#-F: Force to stay in foreground and ignore daemonize option from configuration file.
#	-> https://linux.die.net/man/8/php-fpm
