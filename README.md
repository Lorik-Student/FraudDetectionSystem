# FraudDetectionSystem

## Local setup

Uses [uv](https://docs.astral.sh/uv/) for Python and Flyway for PostgreSQL.

### uv

Install uv, then run:

```bash
uv sync
```

Python 3.13 is set in `.python-version`.

```bash
uv run frauddetectionsystem
```

Add packages with `uv add <package>` or `uv add --dev <package>`.
Commit `uv.lock`.

### PostgreSQL and Flyway

Create `.env`:

```bash
cp .env.example .env
```

Start the database and migrate:
```bash
docker compose up -d db
docker compose run --rm flyway
```

Flyway applies `db/migrations` in version order. It records migrations in
`flyway_schema_history`.

Rerun after adding a migration:

```bash
docker compose run --rm flyway
```

Start all services, including pgAdmin:
```bash
docker compose up -d
```

Reset the local database:

```bash
docker compose down -v
docker compose up -d
```

Warning: `down -v` deletes database data.
