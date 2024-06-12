build:
	cd srcs && sudo docker compose build

up:
	cd srcs && sudo docker compose up -d
	
down:
	cd srcs && sudo docker compose down
	
down_vol:
	cd srcs && sudo docker compose down --volumes && \
	sudo rm -rf /home/jalbers/data/wordpress-data/* && \
	sudo rm -rf /home/jalbers/data/db-data/* \

.PHONY: build up down
