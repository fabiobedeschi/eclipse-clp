.DEFAULT_GOAL:=eclipse

.PHONY: compose.build
compose.build:
	cd docker && docker-compose build

.PHONY: compose.build.nocache
compose.build.nocache:
	cd docker && docker-compose build --no-cache

.PHONY: cleanup
cleanup:
	docker rmi `docker images -f dangling=true -q`

.PHONY: compose.up
compose.up:
	cd docker && docker-compose up -d

.PHONY: compose.stop
compose.stop:
	cd docker && docker-compose stop

.PHONY: compose.down
compose.down:
	cd docker && docker-compose down

.PHONY: bash
bash:
	cd docker && docker-compose exec eclipse bash

.PHONY: eclipse
eclipse:
	cd docker && docker-compose exec eclipse bash -c 'eclipse'

.PHONY: doc
doc:
	cd docker && docker-compose cp eclipse:/root/eclipseclp-install/doc ../
