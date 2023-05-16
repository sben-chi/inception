FROM debian:buster

# Install necessary packages
RUN apt-get update \
	&& apt-get install -y wget php-fpm php-mysql \
	&& wget https://wordpress.org/latest.tar.gz \
	&& tar -xzvf latest.tar.gz \
	&& mkdir -p /var/www/html/sben-chi_site/ \
	&& chmod +x /var/www/html/sben-chi_site/ 
	#chown www-data:www-data /var/www/html/sben-chi_site/ -R

COPY files/wp-config.php /var/www/html/sben-chi_site
COPY files/run.sh ./

CMD [ "sh", "run.sh" ]

