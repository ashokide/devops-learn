## Cloud Formation
- Infrastructure as a Code (IaaC)
- declarative way of outlining AWS infrastructure
- Cloud Formation Template

## Application Composer
- relations between components
- visually compose and configure AWS services

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
