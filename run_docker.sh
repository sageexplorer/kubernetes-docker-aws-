#!/usr/bin/env bash

sudo docker build --tag=simple-ngnix .

sudo docker image ls

sudo docker run -p 80:80 simple-ngnix
