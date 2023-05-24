path=/home/sben-chi/data/
all:
	sudo mkdir -p $(path)/wordpress_v
	sudo mkdir -p $(path)/maria_v
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
	sudo rm -rf $(path)/wordpress_v $(path)/maria_v $(path)