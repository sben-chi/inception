all:
	mkdir wordpress_v maria_v
	docker-compose up --build

up:
	docker-compose up -d

down:
	docker-compose down -v --rmi all

stop:
	docker-compose stop

start:
	docker-compose start

sign_certifcate:
	docker cp nginx:/etc/ssl/certs/nginx-selfsigned.crt $(Home)/Desktop

re: fclean all

fclean: down
	rm -rf wordpress_v maria_v