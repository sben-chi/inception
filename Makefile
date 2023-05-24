path=$(HOME)/data

all:
	sudo mkdir -p $(path)/wp_v $(path)/db_v
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
	sudo rm -rf $(path)
