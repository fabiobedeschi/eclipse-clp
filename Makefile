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
	docker run --rm -v=`pwd`/src:/root/eclipseclp -it eclipse-clp eclipse

.PHONY: bash
bash:
	docker run --rm -v=`pwd`/src:/root/eclipseclp -it eclipse-clp bash

.PHONY: eclipse
eclipse: run
