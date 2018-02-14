#!/bin/bash
docker build -t server1 -f dockerfile1
sleep 1
docker build -t server2 -f dockerfile1
sleep 1


docker run -it -p 8081:80 --name "server1" server1
sleep 1
docker run -it -p 8082:80 --name "server2" server2
sleep 1

curl -I -s "http://127.0.0.1:8081" | grep 200
curl -I -s "http://127.0.0.1:8082" | grep 200