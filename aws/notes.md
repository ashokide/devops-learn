## Amazon Web Services (AWS)
Link : https://aws.amazon.com/

## Cloud Computing
- On-demand delivery of compute power, database storage, applications and other IT resources
- Pay as you go pricing

## Types of cloud
- Private Cloud : Rackspace
- Public Cloud : AWS, GCP, Azure
- Hybrid Cloud : On-premises and public cloud

## Types of cloud computing
- Infrastructure as a Service (IaaS) : AWS, Linode
- Platform as a Service (PaaS) : Heroku, Google App Engine, Elastic Beanstalk
- Software as a Service (SaaS) : Google Docs, Dropbox, Zoom

## Pricing of the cloud
- Compute - Pay for compute time
- Storage - Pay for data stored in the cloud
- Data transfer OUT of the cloud

## AWS Global Infrastructure
- Regions - cluster of data centers
- Availability Zones - discrete data centers (Min 3 Zones)

#### Points of Presence
- Edge Locations
- Regional Caches

#### Global Services
- IAM, Route 53, CloudFront (CDN), WAF (Web Application Firewall), etc.,

#### Region Scoped
- EC2, Lambda, Elastic Beanstalk, etc.,

## Shared Responsibility Model (Security) 
- Customer   - Responsible for security in the cloud
- AWS        - Responsible for security of the cloud

# Services

### Identity and Access Management (IAM) -- Global Service
- Users     - user is an individual
- Groups    - group is a collection of users
- Roles     - role is a predefined set of permissions and access levels
- Policies  - policy is a set of rules

### Elastic Compute Cloud (EC2) 
On-demand computing service on the AWS cloud platform

- Instance Types<br>
<img width="600" alt="image" src="https://github.com/user-attachments/assets/f2fdb6c3-9a40-4992-9c4c-9cf662010f68">

- Tenancy Model<br>
<img width="600" alt="image" src="https://github.com/user-attachments/assets/1d691ce6-ee47-47e2-b17b-24d2614fce0d">

### Simple Storage Service (S3)
Cloud based object storage service

Bucket policy for public access
```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "Statement1",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::your-bucket-name/*"
        }
    ]
}
```

### Virtual Private Cloud (VPC)
Virtual network - Logically isolated section

### Subnet
Sub-network within a Virtual Private Cloud (VPC) that represents a range of IP addresses

### Internet Gateway (IGW)
Allows communication between instances in a VPC and the Internet

### Route Table
Set of rules that determines where network traffic is directed in a Virtual Private Cloud (VPC)

### Nat Gateway
Enables instances in a private subnet to access the Internet, while preventing the Internet from initiating connections to those instances

### Security Groups
Virtual firewall to control incoming and outgoing traffic to and from instances

### Network Access Control List (NACL)
Security feature in AWS that act as a firewall at the subnet level

