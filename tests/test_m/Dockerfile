FROM debian:buster

RUN	apt-get update \
	&& apt-get install -y mariadb-server mariadb-client\
	&& /etc/init.d/mysql start

COPY files/run.sh ./

CMD ["sh", "run.sh"],