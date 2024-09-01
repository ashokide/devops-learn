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
