context:
	docker context use spring

nocodb-up: context
	docker compose -f ./nocodb/docker-compose.yml --env-file .env up -d
nocodb-down: context
	docker compose -f ./nocodb/docker-compose.yml --env-file .env down -v
nocodb-logs: context
	docker compose -f ./nocodb/docker-compose.yml --env-file .env logs -f

# TODO eliminar la carpeta spring de la ruta
traefik-up: context
	docker compose -f ./spring/traefik/docker-compose.yml --env-file .env up -d
traefik-down: context
	docker compose -f ./spring/traefik/docker-compose.yml --env-file .env down -v
traefik-logs: context
	docker compose -f ./spring/traefik/docker-compose.yml --env-file .env logs -f
