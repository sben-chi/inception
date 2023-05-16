#!/bin/sh

#openssl genpkey -algorithm RSA -out ssl_prv.key;
#openssl req -new -key ssl_prv.key -out ssl_cert.pem -subj "/CN=Inception/O=1337/C=MA/ST=MA/L=bg";
#openssl x509 -req -days 365 -in ssl_cert.pem -signkey ssl_prv.key -out ssl_cert.crt;
#mv ssl_* /etc/nginx/ssl/;

openssl req -x509 -nodes -days 365 -subj \
			"/C=CA/ST=QC/O=Company, Inc./CN=sben-chi.42.fr" \
			-addext "subjectAltName=DNS:sben-chi.42.fr" \
			-newkey rsa:2048 -keyout /etc/nginx/ssl/ssl_prv.key \
			-out /etc/nginx/ssl/ssl_cert.crt;

#openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/ssl_prv.key \
#	-out /etc/nginx/ssl/ssl_cert.crt \
#    -subj "/C=US/ST=State/L=City/O=Organization/CN=localhost"


#echo "127.0.0.1	sben-chi.42.fr" >> /etc/hosts;
etc/init.d/nginx reload;
nginx -g "daemon off;"