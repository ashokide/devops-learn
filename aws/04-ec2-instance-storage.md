## Elastic Block Store (EBS)
- EBS volume is a network drive that can be attached to running EC2 instances
- Persist data
- Bound to Availability Zone
- To move volume to different AZ, use snapshots
  
## EBS Snapshots
- Backup (snapshot) of a EBS volume at a point of time
- No need to detach volume to take snapshots
- Can copy snapshots across AZ or region
- Features
  - EBS Snapshot Archive
    - Move snapshots to 'Archive tier' that is 72% cheaper
    - Takes 24 to 72 hours for restoring the archive
  - Recycle Bin for EBS Snapshots
    - Setup retention rules to retain deleted snapshots
    - Specify retention period

## Amazon Machine Image (AMI) 
- Customization of an EC2 Instance
- Add your own software, configuration, operating system, etc.,
- Built for specific region and can be copied across regions
- EC2 can be launched from
  - Public AMI (AWS provided)
  - Own AMI
  - AWS Marketplace AMI (AMI that is made by someone else)
- AMI Process
  - Start instance
  - Customize it
  - Stop instance
  - Build AMI (and also creates EBS snapshots)
  - Create Instance from build AMI

## EC2 Image Builder
- Automate the creation, maintain, validate and test AMI's
- AMI Process
  - EC2 Image Builder 
  - Builder EC2 Instance (Customization)
  - New AMI
  - Test EC2 Instance

## EC2 Instance Store
- High performance hardware disk
- Better I/O performance
- Good for buffer/cache
- Lose the storage, if stopped
- Risk of data loss, if hardware fails
