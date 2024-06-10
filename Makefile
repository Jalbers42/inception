build:
	cd srcs && sudo docker compose build

up:
	cd srcs && sudo docker compose up -d
	
down:
	cd srcs && sudo docker compose down
	
down_with_vol:
	cd srcs && sudo docker compose down --volumes

.PHONY: build up down
