#!/usr/bin/env bash

docker build --tag=simple-ngnix .

docker image ls

# Remove container before running
docker stop $(docker ps -a -q)

docker run  -d -p 80:80 simple-ngnix


#sudo lsof -i -n -P | grep TCP