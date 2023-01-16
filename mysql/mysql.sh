#!/usr/bin/env sh

# docker build -t klid/mysql:5.7 .

docker run --name mysql5.7 \
  -v ~/docker-data/mysql:/var/lib/mysql \
  --user 1000:1000 \
  -e MYSQL_ROOT_PASSWORD=root \
  -p 3306:3306 \
  -d klid/mysql:5.7 --lower_case_table_names=1

#  -e MYSQL_ROOT_PASSWORD=root \
#  -e DATABASE_EXISTS=true \
