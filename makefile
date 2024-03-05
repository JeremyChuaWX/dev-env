.PHONY: start
start:
	docker compose up --build

.PHONY: stop
stop:
	docker compose down --remove-orphans --volumes

.PHONY: clean
clean:
	rm -rf ./pg_data ./pg_admin
