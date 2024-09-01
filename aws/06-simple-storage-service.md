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
