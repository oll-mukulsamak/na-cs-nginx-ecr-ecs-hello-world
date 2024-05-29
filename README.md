# NA-CS-NGINX-ECR-ECS-HELLO-WORLD (appmod assets initiative)

This is a pipeline demo project for nginx based simple hello world and deployment to ECR, ECS using CI/CD

* Needs to have access to AWS Sandbox account
* Needs docker desktop installed in local computer to test,
* Create IAM useer that has admin access or at least admin access to ECR and ECS functions,
* Use access key and secret access key to AWS Configure,
* Please test local app following below steps:
  * `docker build -t na-cs-nginx-ecr-ecs-hello-world .` - This should build an docker image. **Please check if the docker image exists** alternatively you can check the image is created by `docker images` command,
  * `docker run -d --rm -p 8888:80 na-cs-nginx-ecr-ecs-hello-world` - This should run the image in a container. **Please check the running containers**
  * **Please feel free to change the port from `8888` to whichever port suits your requirement**,
  * `docker ps` or `docker ps -a` - This should give you all containers those are running,
  * You should be able to see the page in web browser by going to localhost:8888,
  * This completes the local testing,
* 