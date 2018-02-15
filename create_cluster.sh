#!/bin/bash
docker-compose up --build -d

curl -I -s "http://127.0.0.1:8081" | grep 200
curl -I -s "http://127.0.0.1:8082" | grep 200