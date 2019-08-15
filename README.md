# kubernetes-docker-aws-

[![Build Status](http://ec2-18-219-86-226.us-east-2.compute.amazonaws.com:8080/buildStatus/icon?job=static%2Fmaster)](http://ec2-18-219-86-226.us-east-2.compute.amazonaws.com:8080/job/static/job/master/)

Simple ngnix running kubernetes pods in aws. The app shows a simple page, with a youtube video imbedded in it. 

 * To build docker image, run ./run_docker.sh

 * Docker Image is hosted in Dockerhub. The image is sage007/simple-ngnix 
 
 * create.sh is a cloudformation script to create AWS resources. 

 * To run app using kubernetes, run ./run_kubernetes.sh

 * Any changes to the repo will trigger jenkins build, which runs a linter for html, and runs unit test.

Artifacts:
 * Jenkinsfile contains build steps
 
 * servers.yaml is a cloudformation template to start AWS services, which is run using ./create.sh
 
Rolling Updates:
 
 * Rolling updates are managed by running ./rolling_updates.sh with the new image version in the parameter
 
 * Rolling update is defined in kubernetes/deployment.yml

kubernetes Cluster

 * Kubernetes cluster is created by cloudformation template on Amazon. The files needed for cluster creation is in cloudformation folder. 
