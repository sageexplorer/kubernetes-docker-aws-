#!/usr/bin/env bash

sudo apt  install docker.io

docker build --tag=simple-ngnix .

docker image ls

docker run -p 80:80 simple-ngnix
