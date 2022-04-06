#!/usr/bin/env sh
docker run -d --name sonarqube \
  --link postgresql13 \
  -p 9000:9000 -p 9092:9092 \
  -v ~/docker-data/sonarqube/data:/opt/sonarqube/data \
  -v ~/docker-data/sonarqube/logs:/opt/sonarqube/logs \
  -v ~/docker-data/sonarqube/extensions:/opt/sonarqube/extensions \
  -v ~/docker-data/sonarqube/conf:/opt/sonarqube/conf \
  -e SONARQUBE_JDBC_USERNAME=sonarqube \
  -e SONARQUBE_JDBC_PASSWORD=sonarqube \
  -e SONARQUBE_JDBC_URL="jdbc:postgresql://postgresql13:5432/sonarqube" \
  sonarqube:latest

# Database 004a812f0517e8c6080e517db164293179c4fafb
# create database sonarqube;
# create user sonarqube with password 'sonarqube';
# grant all privileges on database sonarqube to sonarqube;

# Source: https://gist.github.com/ceduliocezar/b3bf93125024482b5f2f479696842046
# to solve problem with sonarqube running in container
#
# nano /etc/sysctl.conf
#
# Edit the config as mentioned in the platform notes for linux:
# nano /etc/sysctl.conf
#
# In this file add:
# vm.max_map_count=262144
# fs.file-max=65536
#
# Then update the config:
# sysctl -p
