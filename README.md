# Project Zomboid Dedicated Server (Docker)

A simple Docker setup to run a persistent Project Zomboid server with automatic admin creation on first launch.

## Usage

```bash
docker-compose up --build -d
```

## Volumes

- `./data` → Server files
- `./zomboid` → Configs, saves, logs

## Default Admin

If no admin is found, the server creates:

- **Username**: `admin`
- **Password**: `admin123`

You can edit settings in `./zomboid/Server/servertest.ini`.

## Ports

Make sure the following UDP ports are open:

- `16261`, `8766`, `27015`
