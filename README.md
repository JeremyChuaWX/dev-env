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

### Modify configuration

To modify the configuration, there are 3 places to make changes:

- `.env`
- `./pg_admin/pgpass`
- `./pg_admin/servers.json`

> For each variable changed in `.env`, the same changes must be made to the following files.

#### `./pg_admin/pgpass`

```
<POSTGRES_HOST>:<POSTGRES_PORT>:*:<POSTGRES_USER>:<POSTGRES_PASSWORD>
```

#### `./pg_admin/servers.json`

```json
{
    "Servers": {
        "1": {
            "Name": "postgres",
            "Group": "Servers",
            "Port": "<POSTGRES_PORT>",
            "Username": "<POSTGRES_USER>",
            "Host": "<POSTGRES_HOST>",
            "SSLMode": "disable",
            "MaintenanceDB": "postgres",
            "PassFile": "/pgpass"
        }
    }
}
```

### Custom filenames

Currently using default names for all files. If custom names are required, use the following commands:

```bash
docker compose --env-file <env-file-here> -f <compose-file-here> up --build -d # up command
docker compose --env-file <env-file-here> -f <compose-file-here> down --remove-orphans --volumes # down command
```
