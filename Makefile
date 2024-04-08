configure:
	echo "Creating web docker network"
	-docker network create web
	touch acme.json
	chmod 600 acme.json
	[ -f ./traefik.yaml ] && echo "traefik.yaml already exists" || cp traefik.yaml.example traefik.yaml
	[ -f ./traefik_dynamic.yaml ] && echo "traefik_dynamic.yaml already exists" || cp traefik_dynamic.yaml.example traefik_dynamic.yaml
	[ -f ./.env ] && echo ".env already exists" || cp .env.example .env
run:
	docker-compose up -d
stop:
	docker-compose down
