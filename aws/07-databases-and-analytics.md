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
- AWS `Cloud Optimized`
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
- Fully managed, highly available with replication across 3 AZ
- NoSQL Database
- Distributes serverless database
- Millions of request per second
- Single digit milliseconds latency

## DynamoDB Accelerator - DAX
- Fully managed `In-memory cache for DynamoDB`
- Single digit millisecond latency to microseconds latency
- DAX is only used for DynamoDB

## DynamoDB Global Tables
- Make accessible with low latency in multi regions
- Active-Active Replication
- Read/Write to any regions

## Redshift
- Based on PostgresSQL
- Used for Online Analytical Processing (OLAP)
- `Analytics` and `Data warehousing`
- Scale to PBs of data
- Columnar storage of data
- Massively Parallel Query Execution

## Redshift Serverless
- Run analytics workloads without managing data warehouse infrastructure
- Automatically provisions and scales data warehouse capacity
- Use cases: Reporting, Dashboarding applications, Real-time analytics.,

## Elastic MapReduce (EMR)
- Create `Hadoop Clusters` (Big Data)
- Analyze and process vast amount of data
- Clusters are made up of 100's of EC2 instances
- Supports Apache Spark, HBase, Presto.,
- Use Case: Data Processing, Machine Learning.,

## Amazon Athena
- Serverless query service
- Performs analytics against S3 objects
- Supports CSV, JSON.,
- Use Case: Business Intelligence, Analytics, Reporting.,

## Amazon QuickSight
- Serverless
- Machine learning powered business intelligence service
- Create `interactive dashboards`
- Use Cases: Business Analytics, Visualizations
- Integrated with Athena, RDS, Aurora, Redshift.,

## DocumentDB
- AWS implementation same as MongoDB 
- Store, query, and index json data
- Fully managed, highly available with replication across 3 AZ
- Storage grows in increments of 10 GB
- Automatically scales to workloads with millions of request per second

## Amazon Neptune
- Fully managed graph database
- Highly available with replication across 3 AZ
- Upto 15 read replicas
- Can store upto billions of relations
- Query the graph with milliseconds latency
- Use Case: Knowledge Graph, Fraud Detection, Recommendation Engine, Social Networking.,

## Amazon Timestream
- Fully managed, Serverless
- Time series database
- Store and analyze trillions of events per day
- Built in time series analytics function

## Amazon Quantum Ledger Database (QLDB)
- A ledger is a book recording financial transactions
- Fully Managed, highly available with replication across 3 AZ
- Immutable System
- Manipulate data using SQL

## Amazon Managed Blockchain
- Decentralized
- Join public blockchain networks
- Create own scalable private network
- Compatible with Hyperledger Fabric and Ethereum

## AWS Glue
- Managed Service
- Serverless
- Extract, Transform, Load (ETL) Service
- Prepare and transform data for analytics
- Glue Data Catalog : Catalog for datasets can be used by Athena, Redshift, EMR
