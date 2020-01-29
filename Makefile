DOCKER_COMPOSE := -f ./docker/docker-compose.yml \
				  -f ./services/app/docker/docker-compose.yml

DOCKER_COMPOSE_PROD := -f ./docker/docker-compose.prod.yml \
				       -f ./services/app/docker/docker-compose.prod.yml

dev:
	docker-compose $(DOCKER_COMPOSE) up -d

dev-stop:
	docker-compose $(DOCKER_COMPOSE) down

prod:
	docker-compose $(DOCKER_COMPOSE) $(DOCKER_COMPOSE_PROD) up -d

prod-stop:
	docker-compose $(DOCKER_COMPOSE) $(DOCKER_COMPOSE_PROD) down
