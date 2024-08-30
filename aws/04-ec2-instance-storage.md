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

## EC2 Image Builder
## EC2 Instance Store
