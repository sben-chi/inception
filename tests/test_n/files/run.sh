#!/bin/sh
openssl req -x509 -nodes -days 365 -subj \
			"/C=CA/ST=QC/O=Company, Inc./CN=sben-chi.42.fr" \
			-addext "subjectAltName=DNS:sben-chi.42.fr" \
			-newkey rsa:2048 -keyout /etc/nginx/ssl/ssl_prv.key \
			-out /etc/nginx/ssl/ssl_cert.crt;
nginx -g "daemon off;"