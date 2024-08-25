## Budgets
- Allows to plan and track AWS costs and usage
- Create Budget from Budget Templates
> Activate Billing for IAM Users by Root user from Billing and Payments

## Elastic Compute Cloud (EC2)
- Infrastructure as a Service
- Capability
  - Virtual Machines (Elastic Compute Cloud - EC2)
  - Virtual Drives (Elastic Block Store - EBS)
  - Load Distribution (Elastic Load Balancer - ELB)
  - Scale Services (Auto Scaling Group - ASG)

## EC2 User Data
- Used to automate the boot tasks (Installing/Updating)
- User Data Script runs as root
- Run only once at instance first start

## EC2 Instance Types

<img width="500" alt="image" src="https://github.com/user-attachments/assets/b7b74ff6-f770-44d1-aa50-eb9bceb15996">
<img width="500" alt="image" src="https://github.com/user-attachments/assets/2e8a3ed3-4686-49c2-86f2-04dd27cd49a2">

## Security Groups
- Virtual firewall for EC2 instances to control incoming and outgoing traffic
- Contains only allow rules

## Ports to remember
- 22 - SSH
- 21 - FTP
- 22 - SFTP
- 80 - HTTP
- 443 - HTTPS
- 3389 - RDP

## Access EC2 Instance
- SSH (Linux, Mac, Windows>=10)
- Putty (Windows < 10)
- EC2 Instance Connect (Web Based)

## EC2 Instance Roles
- Instead of using `aws configure` and putting down the access keys in the EC2 instance, Use the **IAM roles**
- Create a role with necessary policies and attach it to the EC2 instance
