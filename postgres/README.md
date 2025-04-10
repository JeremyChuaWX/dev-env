# Postgres

Data is persisted on a volume `./pg_data`.

# PGAdmin

## Adding servers

To add a server, there are 2 files to modify:

- `./pg_config/pgpass`
- `./pg_config/servers.json`

### pgpass

[PostgreSQL documentation on password files](https://www.postgresql.org/docs/current/libpq-pgpass.html)

To add a server, a new line with the following format is added to the password file with the appropriate fields filled in accordingly.

```
host:port:database:username:password
```

### servers.json

[PGAdmin documentation server JSON file format](https://www.pgadmin.org/docs/pgadmin4/development/import_export_servers.html#json-format)

To add a server, add a new entry to the `Servers` object with the following fields.

```json
{
    "Servers": {
        "1": {
            "Name": "Minimally Defined Server",
            "Group": "Server Group 1",
            "Port": 5432,
            "Username": "postgres",
            "Host": "localhost",
            "SSLMode": "prefer",
            "MaintenanceDB": "postgres"
        },
        "2": {
            "Name": "Fully Defined Server",
            "Group": "Server Group 2",
            "Host": "host.domain.com",
            "HostAddr": "192.168.1.2",
            "Port": 5432,
            "MaintenanceDB": "postgres",
            "Username": "postgres",
            "Role": "my_role_name",
            "SSLMode": "require",
            "Comment": "This server has every option configured in the JSON",
            "DBRestriction": "live_db test_db",
            "PassFile": "/path/to/pgpassfile",
            "SSLCert": "/path/to/sslcert.crt",
            "SSLKey": "/path/to/sslcert.key",
            "SSLRootCert": "/path/to/sslroot.crt",
            "SSLCrl": "/path/to/sslcrl.crl",
            "SSLCompression": 1,
            "Shared": false,
            "SharedUsername": "postgres",
            "BGColor": "#ff9900",
            "FGColor": "#000000",
            "Service": "postgresql-10",
            "Timeout": 60,
            "UseSSHTunnel": 1,
            "TunnelHost": "192.168.1.253",
            "TunnelPort": 22,
            "TunnelUsername": "username",
            "TunnelAuthentication": 0,
            "PasswordExecCommand": "echo 'test'",
            "PasswordExecExpiration": 100
        }
    }
}
```
