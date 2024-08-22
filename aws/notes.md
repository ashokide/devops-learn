## Amazon Web Services (AWS)
Link : https://aws.amazon.com/
# Services

### Identity and Access Management (IAM) -- Global Service
- Users - user is an individual
- Groups - group is a collection of users
- Roles - role is a predefined set of permissions and access levels
- Policies - policy is a set of rules

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

### Internet Gateway

### Nat Gateway

### Load Balancer

### Security Groups

### Network Access Control List (NACL)


