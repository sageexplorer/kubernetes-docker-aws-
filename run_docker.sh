#!/usr/bin/env bash

docker build --tag=simple-ngnix .

docker image ls

docker run -p 80:80 simple-ngnix
