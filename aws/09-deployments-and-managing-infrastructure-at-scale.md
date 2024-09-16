## Cloud Formation
- Infrastructure as a Code (IaaC)
- Declarative way of outlining AWS infrastructure
- Cloud Formation Template

## Application Composer
- Relations between components
- Visually compose and configure AWS services

## Cloud Formation Template
```yaml
AWSTemplateFormatVersion: 2010-09-09
Description: Build a webapp stack with CloudFormation

Resources:
  WebAppInstance:
    Type: AWS::EC2::Instance
    Properties:
      ImageId: ami-0d5eff06f840b45e9 # ImageID valid only in us-east-1 region
      InstanceType: t2.micro
```

## AWS Cloud Development Kit (CDK)
- Define cloud infrastructure using familiar language (Python, Javascript, etc.,)
- Code is compiled to Cloud Formation Template (JSON/YAML)

<img width="700" alt="image" src="https://github.com/user-attachments/assets/9482f05e-6a81-4726-8e51-fa072682cc6d">

## AWS Elastic Beanstalk
- Platform as a Service (PaaS)
- Developer centric view of deploying an application
- Managed Service
  - Instance Configuration/OS
  - Capacity Provisioning
  - Load Balancing/Auto Scaling
  - Application Health Monitoring

## AWS CodeDeploy
- Deploy application automatically
- Works with EC2, On-premise Servers
- Hybrid Service
- CodeDeploy Agent

## AWS CodeCommit
- Fully managed source control repository
- Collaborate with others on code
- Code changes are automatically versioned
- Private, Integrated with AWS
