#!/usr/bin/env bash

dockerpath=sage007/simple-ngnix


kubectl run simple-ngnix-1 --image=$dockerpath 

kubectl get pods
name=`kubectl get pods --no-headers -o custom-columns=":metadata.name"`

kubectl port-forward $name 8888:80


