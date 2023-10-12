FROM debian:buster

RUN apt-get update \
	&& apt-get install -y nginx openssl 

RUN openssl req -subj "/C=MA/ST=BG/L=sben-chi/O=sben-chi Company/CN=sben-chi.42.fr" \
			-newkey rsa:2048 -nodes -keyout /etc/ssl/private/nginx-selfsigned.key \
			-x509 -days 365 -out /etc/ssl/certs/nginx-selfsigned.crt

COPY conf/default /etc/nginx/sites-available/default
COPY tools/run.sh ./

EXPOSE 443    

CMD ["sh", "run.sh"]   