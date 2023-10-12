DOCKER-COMPOSE=sudo docker-compose -f ./srcs/docker-compose.yml
path=/home/sben-chi/data

all:
	sudo mkdir -p $(path)/wp_v $(path)/db_v
	$(DOCKER-COMPOSE) up --build

up:
	$(DOCKER-COMPOSE) up -d

down:
	$(DOCKER-COMPOSE) down -v --rmi all

stop:
	$(DOCKER-COMPOSE) stop

start:
	$(DOCKER-COMPOSE) start

sign_certifcate:
	sudo docker cp nginx:/etc/ssl/certs/nginx-selfsigned.crt $(HOME)/Desktop

re: fclean all

fclean: down
	sudo rm -rf $(path)
