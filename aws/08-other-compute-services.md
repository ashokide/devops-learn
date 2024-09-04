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

## AWS Lambda
- Virtual functions - no servers to manage
- Limited by time - short executions
- Run on-demand
- Scaling is automated
- Pay per request and compute time
- Integrated with AWS services
- Event Driven: functions get invoked by AWS
- Integrated with many programming languages
- Easy monitoring with AWS CloudWatch
- Lambda Language Support
  - Node.js
  - Python
  - Custom Runtime API (Community Supported, Golang or Rust)
- Lambda Container Image
  - Container image must implement the Lambda Runtime API
  - ECS/Fargate is preferred for running arbitrary Docker Images
- Lambda Pricing
  - Pay per calls
  - Pay per duration

## API Gateway
## AWS Batch
## Amazon Lightsail
