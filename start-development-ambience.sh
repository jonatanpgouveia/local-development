#!/bin/bash
#Build Image Server Management
docker build -t management:1.0 -f Dockerfiles/Dockerfile-management .
#Export user current
export UID=$(id -u)
export GID=$(id -g)
# Run start services in containers Docker
docker-compose up -d --build