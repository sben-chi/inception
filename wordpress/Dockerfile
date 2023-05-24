FROM debian:buster

RUN apt-get update && apt-get install -y wget php-fpm php-mysql mariadb-client\
	&& wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& mkdir -p /var/www/html/sben-chi_blog/ \
	&& chmod +x /var/www/html/sben-chi_blog/ wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp

COPY tools/run.sh ./

CMD [ "sh", "run.sh" ]