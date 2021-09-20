.DEFAULT_GOAL:=run

.PHONY: build
build:
	docker build --tag eclipse-clp .

.PHONY: build.nocache
build.nocache:
	docker build --no-cache --tag eclipse-clp .

.PHONY: cleanup
cleanup:
	docker rmi `docker images -f dangling=true -q`

.PHONY: run
run:
	docker run --rm -idP -v=`pwd`/src:/root/eclipseclp --name eclipse-clp eclipse-clp

.PHONY: stop
stop:
	docker stop eclipse-clp

.PHONY: bash
bash:
	docker exec -it eclipse-clp bash

.PHONY: eclipse
eclipse:
	docker exec -it eclipse-clp eclipse
