Creating EKS cluster using cloudformation

* Create a stack using ./create.sh ngnix vpc.yml and when it finishes, run ./create.sh nodes create-nodes.yml 

* Once the stack is up, download the config map: 
curl -o aws-auth-cm.yaml https://amazon-eks.s3-us-west-2.amazonaws.com/cloudformation/2019-02-11/aws-auth-cm.yaml

* Open the file with your favorite text editor. Replace the <ARN of instance role (not instance profile)> with the role from the stack output

* kubectl apply -f aws-auth-cm.yaml

* kubectl get nodes --watch

