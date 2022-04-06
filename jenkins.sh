#!/usr/bin/env sh
docker run -d --name jenkins-lts-jdk11 \
  -p 8081:8080 -p 50000:50000 \
  -v ~/docker-data/jenkins-lts-jdk11-data:/var/jenkins_home \
  --env JAVA_OPTS="-Dhudson.security.csrf.GlobalCrumbIssuerConfiguration.DISABLE_CSRF_PROTECTION=true" \
  jenkins/jenkins:lts-jdk11
