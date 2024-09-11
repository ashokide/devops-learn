## Simple Storage Service (S3)
- Backup and storage
- Archive
- Media hosting
- Static website

## S3 - Buckets
- Store objects (files) in buckets (directories)
- Globally unique name
- Region level

## S3 - Objects
- Objects (files) have a key
- Key is the full path (prefix + object name)
- Example: s3://bucket-name/folder/myfile.txt
- No concepts of directories
- Object values are content of the body
- Max. Object size is 5TB
- Use multipart upload, if object is greater than 5GB
- Metadata (list of text key/value pairs - system or user metadata)
- Tags (unicode key/value pairs)
- Version ID

## S3 - Security
- User based
  - IAM policies
- Resource based
  - Bucket policies
  - Object ACL
  - Bucket ACL
- Encryption
  - Encrypt objects using encryption keys

## S3 Bucket Policies
- Grant/Deny access to the bucket
- JSON based policies
    - Resources : Buckets and Objects
    - Effect : Allow or Deny
    - Actions : Set of API to allow or deny
    - Principal : Account/User to apply the policy
- Bucket settings for Block Public Access - to prevent company data leaks
  
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Statement1",
      "Principal": "*",
      "Effect": "Allow",
      "Action": [
          "s3:PutObject"
      ],
      "Resource": "arn:aws:s3:::amzn-s3-demo-bucket/*"
    }
  ]
}
```

## S3 - Static Website Hosting
- Host static websites
- URL Example : http://`bucket-name`.s3-website.`aws-region`.amazonaws.com
- 403 Forbidden Error : Make sure the bucket policy allows public access

## S3 - Versioning
- Add Version to the files
- Enabled at bucket level
- Same key overwrite will change the version: 1,2,3.,
- Protect against unintended deletes
- Easy roll back
- Version `null` will be added to files that are added prior to version enabling
- Suspending versioning will not delete the previous versions

## S3 - Replication
- Must enable versioning in both source and destination buckets
- Same Region Replication (SRR)
- Cross Region Replication (CRR)
- Copying is Asynchronous
- Must give proper IAM permissions to S3
- Use Cases
  - SRR : Log aggregation, Live replication between production and test accounts
  - CRR : Low latency Access, Compliance

## S3 - Storage Classes
- S3 Standard - General Purpose
  - Used for frequently accessed data
  - Low latency and high throughput
- S3 Storage Classes - Infrequent Access (IA)
  - Used for less frequently accessed data, but requires rapid access
  - Lower cost than S3 Standard
  - Types
    - S3 Standard - Infrequent Access (IA)
      - Use cases: Disaster Recovery, Backups
    - S3 One Zone - Infrequent Access (IA)
      - Data is stored in single AZ
      - Data lost when AZ is destroyed
      - Use cases: Storing secondary backups copies of on-premise data
- S3 Glacier Storage Classes
  - Low cost object storage meant for archiving/backup
  - Price for storage and object retrieval cost
  - Types
    - S3 Glacier Instant Retrieval
      - Millisecond retrieval, great for data accessed once a quarter
      - Minimum storage duration of 90 days
    - S3 Glacier Flexible Retrieval
      - Expedited(1 to 5 minutes), Standard (3 to 4 hours), Bulk (5 to 12 hours)
      - Minimum storage duration of 90 days
    - S3 Glacier Deep Archive
      - Standard (12 hours), Bulk (48 hours)
      - Minimum storage duration of 180 days
- S3 Intelligent Tiering
  - Small monthly monitoring and auto tiering free
  - Move objects automatically between Access tiers based on usage
  - No retrieval charges

> [!NOTE]
> Can move between classes manually or using S3 Lifecycle Configurations

## S3 Encryption
- Server Side Encryption (Default)
- Client Side Encryption

## S3 - IAM Access Analyzer
- Ensure the access to S3 buckets
- Example : Publicly accessible bucket, bucket shared with other AWS account.,
- Evaluates S3 Bucket Policies, S3 ACLs

## Shared Responsibility Model
- AWS
  - Infrastructure
  - Configuration and Vulnerability Analysis
  - Compliance
- Customer
  - Versioning
  - Bucket Policies
  - Replication
  - Logging and Monitoring
  - S3 Storage Classes
  - Data Encryption

## AWS Snow Family
- Offline devices to perform data migrations
- Highly secure portable devices
- Collect and process data at the edge
- Migrate data into and out of AWS
- Usage
  - Request Snowball Devices
  - Install Snowball client/AWS OpsHub
  - Connect Snowball and copy files
  - Ship back the device
  - Data will be loaded into S3 bucket
  - Snowball will be wiped completely
    
## Snowcone 
- Storage
  - 8TB HDD - 14 TB SSD
- Migration
  - Upto terabytes

## Snowball Edge 
- Storage
  - 80TB - 210 TB
- Migration
  - Upto petabytes

## Edge Computing
- Process data while it is being created on edge location (truck on road, ship on sea, underground)
- Locations have limited internet and no access to computing power
- Setup Snowball Edge/Snowcone device
- Snowcone (2 CPU, 2GB Memory, Wired/Wireless Access)
- Snowball Edge Computing Optimized & Storage Optimized
- Usecase: Preprocess data, Transcoding Media
- Pricing
  - Device Usage and Data Transfer Out
  - Data Transfer In to S3 is free

## Hybrid Cloud for Storage
- Part of Infrastructure is on-premises
- Part of Infrastructure is on the cloud
- Due to compliance requirements

## AWS Storage Gateway 
- Bridge between on-premise data and cloud data in S3
- Use Case: Disaster Recovery, Backup and Restore
- Types
  - File Gateway
  - Volume Gateway
  - Tape Gateway
