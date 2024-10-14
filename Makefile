command-list:
	@echo "command-list:"
	@echo " make build             - docker compose build"
	@echo " make build-up          - docker compose up -d --build"
	@echo " make nbuild            - docker compose build --no-cache"
	@echo " make up                - docker compose up -d"
	@echo " make down              - docker compose down"
	@echo " make app               - docker compose exec app bash"
	@echo " make app-www-data      - docker compose exec --user=www-data app bash"
	@echo " make vdown             - docker compose down -v"
	@echo " make vendor-to-host    - docker cp ykk-dx_app:/var/www/html/vendor vendor-volume"
	@echo " make vendor-to-app      - docker cp ./vendor ykk-dx_app:/var/www/html/vendor"
	@echo " make prod-up           - docker compose -f docker-compose.prod.yml up -d"
	@echo " make prod-up-build     - docker compose -f docker-compose.prod.yml up -d --build"
	@echo " make log-app           - docker compose logs app"
	@echo " make log-mysql         - docker compose logs mysql"
	@echo " make log-phpmyadmin    - docker compose logs phpmyadmin"
	@echo " make log               - docker compose logs"
	@echo " make stop              - docker compose stop"
	@echo " make stop-app          - docker compose stop app"
	@echo " make stop-mysql        - docker compose stop mysql"
	@echo " make stop-phpmyadmin   - docker compose stop phpmyadmin"
	@echo " make ps                - docker compose ps"
	

# Docker commands
build:
	docker compose build

build-up:
	docker compose up -d --build

nbuild:
	docker compose build --no-cache

up:
	docker compose up -d

down:
	docker compose down

app:
	docker compose exec app bash

app-www-data:
	docker compose exec --user=www-data app bash

vdown:
	docker compose down -v

vendor-to-host:
	docker compose cp app:/var/www/html/vendor ./src/

vendor-to-app:
	docker compose cp ./src/vendor app:/var/www/html/

prod-up:
	docker compose -f docker-compose.prod.yml up -d

prod-up-build:
	docker compose -f docker-compose.prod.yml up -d --build

log-app:
	docker compose logs app

log-mysql:
	docker compose logs mysql

log-phpmyadmin:
	docker compose logs phpmyadmin

log:
	docker compose logs

stop:
	docker compose stop

stop-app:
	docker compose stop app

stop-mysql:
	docker compose stop mysql

stop-phpmyadmin:
	docker compose stop phpmyadmin

ps:
	docker compose ps