#!/usr/bin/env sh
docker run -d --name mysql5.7 \
  -v ~/docker-data/mysql:/var/lib/mysql \
  -e MYSQL_ROOT_PASSWORD=root \
  -p 3306:3306 \
  mysql:5.7
