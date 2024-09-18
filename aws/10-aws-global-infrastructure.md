## Why Global Application
- Deployed in multiple geographies (Regions/Edge Locations)
- Decreased Latency
- Disaster Recovery (DR)
- Attack Protection

## Global AWS Infrastructure
- Regions
  - For deploying applications and infrastructure
- Availability Zones
  - Made of multiple data centers
- Edge Locations (Points of Presence)
  - For content delivery as close as possible to users

## Route53
- Manager DNS (Domain Name System)
- Collection of rules and records
- Most common records - A, AAAA, CNAME, ALIAS
- Routing Policies
  - Simple Routing Policy
    - No health checks
  - Weighted Routing Policy
    - Health checks
  - Latency Routing Policy
    - Health checks
  - Failover Routing Policy
    - Health checks on primary
    - Disaster recovery

## CloudFront
- Content Delivery Network (CDN)
- Improves read performance and content is cached at edge
- DDoS protection
- Integration with Shield, AWS Web Application Firewall

### CloudFront Origins
  - S3 Bucket
    - For distributing files and caching them at the edge
    - Enhanced security with CloudFront Origin Access Control (OAC)
    - Can be used as an ingress (to upload files to S3)
  - Custom Origin (HTTP)
    - Application Load Balancer
    - EC2 instance
    - S3 Website (Static S3 Website)
    - Any HTTP backend

## CloudFront vs S3 Cross Origin Replication
- CloudFront
  - Global edge network
  - Files are cached for a TTL
  - Great for static content that must be available everywhere

- S3 Cross Origin Replication
  - Setup for each region
  - Files are updated for realtime
  - Read only
  - Great for dynamic content that needs to be available at low latency in few regions

## S3 Transfer Acceleration
- Increase transfer speed by transferring file to an AWS edge location which will forward the data to the S3 bucket in the target region
<img width="600" alt="image" src="https://github.com/user-attachments/assets/d3309628-e48e-483f-9765-ea127774e51d">

## AWS Global Accelerator
- Improve global application availability and performance
- Leverage the AWS internal network to optimize the route
- Traffic is sent through Edge Locations
<img width="600" alt="image" src="https://github.com/user-attachments/assets/dc9528dd-b82e-44a3-a6a4-e276c8cc45d0">

## CloudFront vs Global Accelerator
- Both uses AWS global network and its edge locations
- Both services integrate with AWS Shield for DDoS protection
- CloudFront
  - Improves performance for cacheable content
  - Content is served at the edge
- Global Accelerator
  - No caching, proxying packets at the edge to applications

## AWS Outposts
- Hybrid cloud (on-premises + cloud infrastructure)
- Server racks that offers the same AWS infrastructure, services, APIs and tools on on-premises just as in the cloud
- AWS will setup and manage outposts racks within on-premises infrastructure
- Responsible for outposts rack physical security
- Benefits
  - Low latency
  - Local data processing
  - Services that work on outposts rack such as EC2, EBS, S3, ECS, EKS, RDS, etc., 

## AWS Wavelength Zones
- Infrastructure deployments embedded within the telecommunication providers datacenters at the edge of 5G networks
- Bring AWS services to the edge of the 5G networks
- Ultra low latency applications through 5G networks
- Use Cases: Smart Cities, Connected Vehicles, Interactive Live Video Streams, etc., 

## AWS Local Zones
- Places selected AWS services closer to end users to run latency sensitive applications
- Extend VPC to more locations (Extension of an AWS region)
- Compatible with EC2, RDS, ECS, Elasticache, etc.,
- Example
  - AWS Region: Asia Pacific (Mumbai) ap-south-1
  - AWS Local Zones:
    - India (Kolkata) ap-south-1-ccu-1a
    - India (Delhi) ap-south-1-del-1

## Global Application Architecture
- Single Region, Single Availability Zone
  - High Availability ❌
  - Global Latency ❌
  - Difficulty (Low)

- Single Region, Multi Availability Zone
  - Availability ✅
  - Global Latency ❌
  - Difficulty (Medium)
    
- Multi Region, Active-Passive
  - Active - Read and Write
  - Passive - Read
  - Global Read Latency ✅
  - Global Write Latency ❌
  - Difficulty (High)

- Multi Region, Active-Active
  - Active - Read and Write
  - Global Read Latency ✅
  - Global Write Latency ✅
  - Difficulty (Very High)
