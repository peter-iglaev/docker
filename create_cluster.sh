#!/bin/bash
docker-compose up --build -d

curl -I "http://127.0.0.1:8081" | head -1
curl -I "http://127.0.0.1:8082" | head -1