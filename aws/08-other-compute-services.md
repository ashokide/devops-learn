## Docker
- Software development platform to deploy apps
- Apps are packaged in containers that can be run on any OS
- Scale containers up and down quickly
- Docker images are stored in Docker Repositories
- Amazon ECR (Elastic Container Registry)

## Elastic Container Service (ECS)
- Launch Docker Container on AWS
- Must provision and maintain the infrastructure (EC2 Instances)
- Integration with application load balancer

## Fargate
- Launch Docker Container on AWS
- Don't need to provision and maintain the infrastructure (EC2 Instances)
- Serverless

## Elastic Container Registry (ECR)
- Private Docker Registry
- Store Docker Images
- Stored images can be used by ECS and Fargate
