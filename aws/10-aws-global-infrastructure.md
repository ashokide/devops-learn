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
  - Great for static content
