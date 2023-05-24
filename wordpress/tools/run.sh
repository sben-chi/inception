#!/bin/sh

/etc/init.d/php7.3-fpm start;
cd /var/www/html/sben-chi_blog/;

# Download WordPress core and plugins.
wp config create --allow-root --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --dbhost=${DB_HOST}
wp core download --allow-root;

# Default DB name and user.
# Install a basic site
wp core install --allow-root --url=${MY_DOMAIN} --title=inception --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD}  --admin_email=${WP_ADMIN_EMAIL} --skip-email
#  creat user site
wp user create --allow-root $WP_USER $WP_USER_EMAIL --user_pass=${WP_USER_PASSWORD} 

sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/' /etc/php/7.3/fpm/pool.d/www.conf;
php-fpm7.3 -F;