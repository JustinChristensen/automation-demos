.PHONY: all
all: run-server

.PHONY: build
build:
	docker compose build

.PHONY: run-server
run-server: build
	docker compose run server

.PHONY: run-controller
run-controller: build
	docker compose run controller

.PHONY: clean
clean:
	docker compose down

