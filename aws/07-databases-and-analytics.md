## Databases
- Structured Data
- Build indexes to efficiently query
- Define relationships

## Relational Database
- Links between tables
- Use SQL language to perform queries

## NoSQL Database
- Non relational
- Flexible Schemas
- Scale out by using distributed clusters

## Amazon RDS 
- Relational Database Service
- Managed DB Service
- SQL as a query language
- Example: Postgres, MySQL, MS SQL Server.,
- Read replicas for improved read performance
- Multi AZ for Disaster Recovery

## Amazon Aurora
- Proprietary technology from AWS
- Aurora DB supports MySQL, PostgreSQL
- AWS Cloud Optimized
- Storage grows in increments of 10 GB

## Amazon Aurora Serverless
- Automated database instantiation
- Auto scaling based on autual usage
- No capacity planning needed

## RDS Deployments: Read Replicas and Multi AZ
- Read Replicas
  - Scale the read workload
  - Create upto 15 read replicas
  - Data is only written to Main DB
- Multi AZ
  - Failover incase of AZ outage
  - Data is only read/written to Main database
  - Can only have 1 other AZ as Failover DB
- Multi Region (Read Replica's)
  - Local Performace for global needs
  - Disaster recovery incase of region issue

## ElastiCache
- Managed Redis or Memcached
- In-memory database with high performance and low latency
- Reduce load of databases for read intensive workloads

## DynamoDB
- Key/Value database
- Primary Key - Partition Key + Sort Key
- Fully managed, Highly available with replication across 3 AZ
- NoSQL Database
- Distributes serverless database
- Millions of request per second
- Single digit milliseconds latency

## DynamoDB Accelerator - DAX
- Fully managed In-memory cache for DynamoDB
- Single digit millisecond latency to microseconds latency
- DAX is only used for DynamoDB
