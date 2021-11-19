configure:
	echo "Creating web docker network"
	-docker network create web
	touch acme.json
	chmod 600 acme.json
	cp traefik.yaml.example traefik.yaml
	cp traefik_dynamic.yaml.example traefik_dynamic.yaml
	cp .env.example .env

run:
	docker-compose up
stop:
	docker-compose down
