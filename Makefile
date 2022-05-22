context:
	docker context use spring

gitea-up: context
	docker compose -f ./gitea/docker-compose.yml --env-file .env up -d
gitea-down: context
	docker compose -f ./gitea/docker-compose.yml --env-file .env down -v
gitea-logs: context
	docker compose -f ./gitea/docker-compose.yml --env-file .env logs -f

nocodb-up: context
	docker compose -f ./nocodb/docker-compose.yml --env-file .env up -d
nocodb-down: context
	docker compose -f ./nocodb/docker-compose.yml --env-file .env down -v
nocodb-logs: context
	docker compose -f ./nocodb/docker-compose.yml --env-file .env logs -f

traefik-up: context
	docker compose -f ./traefik/docker-compose.yml --env-file .env up -d
traefik-down: context
	docker compose -f ./traefik/docker-compose.yml --env-file .env down -v
traefik-logs: context
	docker compose -f ./traefik/docker-compose.yml --env-file .env logs -f

vaultwarden-up: context
	docker compose -f ./vaultwarden/docker-compose.yml --env-file .env up -d
vaultwarden-down: context
	docker compose -f ./vaultwarden/docker-compose.yml --env-file .env down -v
vaultwarden-logs: context
	docker compose -f ./vaultwarden/docker-compose.yml --env-file .env logs -f

vikunja-up: context
	docker compose -f ./vikunja/docker-compose.yml --env-file .env up -d
vikunja-down: context
	docker compose -f ./vikunja/docker-compose.yml --env-file .env down -v
vikunja-logs: context
	docker compose -f ./vikunja/docker-compose.yml --env-file .env logs -f
