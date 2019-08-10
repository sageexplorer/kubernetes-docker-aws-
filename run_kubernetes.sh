#!/usr/bin/env bash

dockerpath=karthequian/helloworld


kubectl run simple-ngnix --image=$dockerpath 

kubectl get pods
name=`kubectl get pods --no-headers -o custom-columns=":metadata.name"`

kubectl port-forward $name 80:80

#kubectl scale --replicas=0 deployment/<your-pod>