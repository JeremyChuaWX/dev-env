# PG-Docker

Quick and easy Docker compose setup for Postgres and PG Admin.

## Features

- Runs a Postgres instance and an accompanying PG Admin instance with auto-login.
- Postgres data is persisted in `./pg_data` folder.

## How to use

Run the following commands to start and stop the containers:

```bash
  docker compose up --build -d # up command
  docker compose down --remove-orphans --volumes # down command
```

## Notes

- Currently using default names for all files. If custom names are required, use the following commands:

  ```bash
  docker compose --env-file <env-file-here> -f <compose-file-here> up --build -d # up command
  docker compose --env-file <env-file-here> -f <compose-file-here> down --remove-orphans --volumes # down command
  ```
