## Scalability
- Application/System handle greater loads
- Vertical Scaling
  - Increase the size of the instance
  - Non distributed systems such as database
  - Hardware Limit
  - Example : t2.micro to t2.large
- Horizontal Scaling
  - Increase number of instances/systems
  - Distributed systems
  - Web applications

## High Availability
- Horizontal Scaling
- Running application in atleast 2 Availability Zones
- Goal is to survive datacenter loss (disaster)
  
## Load Balancing
- Forward internet traffic to multiple servers
- Spread load across multiple downstream instances
- Expose single point of access (DNS)
- Do regular health checks
- Provide SSL termination (HTTPS)
- High availability across zones

## Elastic Load Balancer (ELB)
- Managed load balancer
- Types of load balancer
  - Application Load Balancer (ALB)
  - Network Load Balancer (NLB)
  - Gateway Load Balancer (GLB)

- Application Load Balancer (ALB)
  - HTTP/HTTPS/gRPC Protocols
  - Layer 7
  - HTTP Routing features
  - Static DNS (URL)
- Network Load Balancer (NLB)
  - TCP/UDP Protocols
  - Layer 4
  - High Performance : millions of request per second
  - Static IP through Elastic IP
- Gateway Load Balancer (GLB)
  - GENEVE Protocol
  - Layer 3
  - Route traffic to firewall
  - Intrusion Detection
  - 3rd Party Security Virtual Appliances
