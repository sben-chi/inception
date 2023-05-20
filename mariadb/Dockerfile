FROM debian:buster

RUN	apt-get update \
	&& apt-get install -y mariadb-server

COPY tools/run.sh ./

CMD ["sh", "run.sh"]