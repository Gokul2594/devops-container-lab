#!/bin/bash

echo "Staring postgres container..."

if [[ $(docker network inspect flask-web-env | wc -c) -ne 0 ]]; then
    docker network create flask-web-env
fi

docker run --name db \
    -e POSTGRES_PASSWORD=postgres \
    -e POSTGRES_PASSWORD=postgres \
    -e PGUSER=postgres \
    -v ./postgres-data:/var/lib/postgresql/data \
    --net flask-web-env \
    -d postgres:15.3

echo "Staring flask web app..."

docker run --name simple-flask-app \
    -p 8080:8080 \
    -e DB_HOST=db \
    -e DB_PORT=5432 \
    -e DB_NAME=postgres \
    -e DB_USER=postgres \
    -e DB_PASSWORD=postgres \
    --net flask-web-env \
    -d gokulviswanathan/flask-views-counter:1.1