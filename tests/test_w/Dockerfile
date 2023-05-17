FROM debian:buster

# Install necessary packages
RUN apt-get update \
	&& apt-get install -y wget php-fpm php-mysql mariadb-client\
	#&& wget https://wordpress.org/latest.tar.gz \
	#&& tar -xzvf latest.tar.gz \
	&& wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& mkdir -p /var/www/html/sben-chi_site/ \
	&& chmod +x /var/www/html/sben-chi_site/ wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp

COPY files/wp-config.php /var/www/html/sben-chi_site
COPY files/run.sh ./

CMD [ "sh", "run.sh" ]

