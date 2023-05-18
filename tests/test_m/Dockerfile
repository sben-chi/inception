FROM debian:buster

RUN	apt-get update \
	&& apt-get install -y mariadb-server

COPY files/my.cnf /etc/mysql/my.cnf

COPY files/run.sh ./

EXPOSE 3306

CMD ["sh", "run.sh"]