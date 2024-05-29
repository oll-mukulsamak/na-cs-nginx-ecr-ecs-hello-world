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
* create a .github/workflows directory in the Repository and create two files as below. **refer aws.yml file**,
* Create task-defination.json file
  * This can be updated once we have created the task  Definition,
  * aws ecs describe-task-definition
    * task-definition na-cs-nginx-ecr-ecs-hello-world
    * query taskDefinition "Angle Bracket" task-definition.json
* To use this workflow, you will need to complete the following set-up steps:
  * Create an ECR repository to store your images,
  * Create an ECS task definition, an ECS cluster, and an ECS service,
  * Store your ECS task definition as a JSON file in your repository,
  * Store an IAM user access key in GitHub Actions secrets named `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`,