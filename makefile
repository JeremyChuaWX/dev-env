start:
	docker compose up --build

stop:
	docker compose down --remove-orphans --volumes

clean:
	rm -rf ./pg_data
