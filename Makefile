path=$(HOME)/data

all:
	mkdir -p $(path)/wp_v $(path)/db_v
	sudo docker-compose up --build

up:
	sudo docker-compose up -d

down:
	sudo docker-compose down -v --rmi all

stop:
	sudo docker-compose stop

start:
	sudo docker-compose start

sign_certifcate:
	sudo docker cp nginx:/etc/ssl/certs/nginx-selfsigned.crt $(HOME)/Desktop

re: fclean all

fclean: down
<<<<<<< HEAD
	rm -rf $(path)
=======
	rm -rf wordpress_v maria_v
>>>>>>> 260592a5bdfdc1b5de6724870d7c94d13d455c92
