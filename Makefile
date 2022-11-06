context:
	docker context use spring

excalidraw-up: context
	docker compose -f ./excalidraw/docker-compose.yml --env-file .env up -d
excalidraw-down: context
	docker compose -f ./excalidraw/docker-compose.yml --env-file .env down -v
excalidraw-logs: context
	docker compose -f ./excalidraw/docker-compose.yml --env-file .env logs -f
excalidraw-pull: context
	docker compose -f ./excalidraw/docker-compose.yml --env-file .env pull

gitea-up: context
	docker compose -f ./gitea/docker-compose.yml --env-file .env up -d
gitea-down: context
	docker compose -f ./gitea/docker-compose.yml --env-file .env down -v
gitea-logs: context
	docker compose -f ./gitea/docker-compose.yml --env-file .env logs -f
gitea-pull: context
	docker compose -f ./gitea/docker-compose.yml --env-file .env pull
gitea-update: gitea-pull gitea-up

joplin-up: context
	docker compose -f ./joplin/docker-compose.yml --env-file .env up -d
joplin-down: context
	docker compose -f ./joplin/docker-compose.yml --env-file .env down -v
joplin-logs: context
	docker compose -f ./joplin/docker-compose.yml --env-file .env logs -f
joplin-pull: context
	docker compose -f ./joplin/docker-compose.yml --env-file .env pull

nocodb-up: context
	docker compose -f ./nocodb/docker-compose.yml --env-file .env up -d
nocodb-down: context
	docker compose -f ./nocodb/docker-compose.yml --env-file .env down -v
nocodb-logs: context
	docker compose -f ./nocodb/docker-compose.yml --env-file .env logs -f
nocodb-pull: context
	docker compose -f ./nocodb/docker-compose.yml --env-file .env pull
nocodb-update: nocodb-pull nocodb-up

traefik-up: context
	docker compose -f ./traefik/docker-compose.yml --env-file .env up -d
traefik-down: context
	docker compose -f ./traefik/docker-compose.yml --env-file .env down -v
traefik-logs: context
	docker compose -f ./traefik/docker-compose.yml --env-file .env logs -f
traefik-pull: context
	docker compose -f ./traefik/docker-compose.yml --env-file .env pull

vaultwarden-up: context
	docker compose -f ./vaultwarden/docker-compose.yml --env-file .env up -d
vaultwarden-down: context
	docker compose -f ./vaultwarden/docker-compose.yml --env-file .env down -v
vaultwarden-logs: context
	docker compose -f ./vaultwarden/docker-compose.yml --env-file .env logs -f
vaultwarden-pull: context
	docker compose -f ./vaultwarden/docker-compose.yml --env-file .env pull

vikunja-up: context
	docker compose -f ./vikunja/docker-compose.yml --env-file .env up -d
vikunja-down: context
	docker compose -f ./vikunja/docker-compose.yml --env-file .env down -v
vikunja-logs: context
	docker compose -f ./vikunja/docker-compose.yml --env-file .env logs -f
vikunja-pull: context
	docker compose -f ./vikunja/docker-compose.yml --env-file .env pull
vikunja-update: vikunja-pull vikunja-up
