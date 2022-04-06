#!/usr/bin/env sh
docker run -d --name postgresql13 \
  -e POSTGRES_PASSWORD=root \
  -e PGDATA=/var/lib/postgresql/data/pgdata \
  -v ~/docker-data/postgresql:/var/lib/postgresql/data \
  -p 5433:5432 \
  postgres:13.4
