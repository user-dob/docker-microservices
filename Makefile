DOCKER_DIRS := ./ ./services/app

DOCKER_COMPOSE := $(foreach dir,$(DOCKER_DIRS),-f $(dir)/docker/docker-compose.yml)
DOCKER_COMPOSE_PROD := $(foreach dir,$(DOCKER_DIRS),-f $(dir)/docker/docker-compose.prod.yml)

dev:
	docker-compose $(DOCKER_COMPOSE) up -d

dev-stop:
	docker-compose $(DOCKER_COMPOSE) down

prod:
	docker-compose $(DOCKER_COMPOSE) $(DOCKER_COMPOSE_PROD) up -d

prod-stop:
	docker-compose $(DOCKER_COMPOSE) $(DOCKER_COMPOSE_PROD) down
