# Routine Tracker

This app makes routine TO-DO lists easy with repeatable task, and tracks
how successfully they are being completed.

This app is created with:
  - React Frontend
  - Golang Server
  - PostgreSQL Database
  - Docker containers

Getting Started:
1. Update your .env file with the variables from .env.example
2. Start with compose
```
set -a
source .env
docker-compose up
```
3. Run migrations
```
docker compose --profile tools run migrate
```
