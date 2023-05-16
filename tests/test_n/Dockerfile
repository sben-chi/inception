FROM alpine:latest

RUN	apk update && \
	apk add nginx acme-client openssl &&  \
	rm -rf /var/cache/apk/* && \
	mkdir -p /etc/nginx/ssl && \
	chmod +x /etc/nginx/ssl	
	

COPY files/default.conf /etc/nginx/http.d/default.conf
#ADD files/index.php /var/www/html/sben-chi_site 

COPY /files/run.sh ./

EXPOSE 443

CMD ["sh", "run.sh"]