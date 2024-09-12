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
- Expose Lambda Functions as HTTP API
- Create, Publish, Maintain, Monitor, and Secure APIs
- Fully Managed, Serverless
- Supports RESTful APIs and WebSocket APIs
- Proxy Requests
  
## AWS Batch
- Batch processing at any scale
- Run 100000's computing batch jobs
- A batch job is a job with a start and an end
- Batch will dynamically launch EC2 instances or Spot instances
- Batch jobs are defined as Docker Images and runs on ECS

## AWS Lambda vs AWS Batch
- Lambda
  - Time limit
  - Limited runtime
  - Limited temporary disk space
  - Serverless
- Batch
  - No time limit
  - Any runtime
  - Relies on EBS/Instance store
  - Relies on EC2

## Amazon Lightsail
- Virtual servers, Storage, Databases and Networking
- Low and predictable pricing
- Simple alternative to using EC2, RDS, EBS.,
- Great for people with little cloud experience
- High availability but no auto scaling
- Limited AWS integrations
