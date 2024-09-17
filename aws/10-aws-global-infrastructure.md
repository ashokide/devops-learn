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
