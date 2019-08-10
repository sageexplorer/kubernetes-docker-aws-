# kubernetes-docker-aws-

Simple ngnix running kubernetes pods in aws. The app shows a simple page, with a youtube video imbedded in it. 

 * To build docker image, run ./run_docker.sh

 * Docker Image is hosted in Dockerhub. The image is sage007/simple-ngnix 

 * To run app using kubernetes, run ./run_kubernetes.sh

 * Any changes to the repo will trigger jenkins build, which runs a linter for html, and runs unit test.
