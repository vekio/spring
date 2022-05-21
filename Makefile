context:
	docker context use spring

traefik-up: context
	docker compose -f ./spring/traefik/docker-compose.yml --env-file .env up -d
traefik-down: context
	docker compose -f ./spring/traefik/docker-compose.yml --env-file .env down -v
traefik-logs: context
	docker compose -f ./spring/traefik/docker-compose.yml --env-file .env logs -f
