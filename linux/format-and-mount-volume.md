## Format and Mount Volume

### 1. Identify the volume

`lsblk` command to list all available block devices (disks)
```sh
lsblk
```
Output:
- Displays a list of disks, including their device names (e.g., /dev/sda, /dev/sdb, etc.).


### 2. Determine the file system type
`file` command with `-s` option is used to determine the file system type of a block device

```sh
# example : file -s /dev/sdb

file -s /dev/sdX
```
#### Output:
- Linux rev 1.0 ext4 filesystem data: The device contains an ext4 file system.
- NTFS filesystem data: The device contains an NTFS file system (commonly used on Windows systems).
- data: The device does not contain a recognizable file system.
- raw: The device is not formatted or does not contain a file system.


> [!WARNING]
> Skip step 3 if it has file system already, Otherwise, you'll format the volume and delete the existing data

### 3. Format the volume
`mkfs` command to format the volume and `-t` option to provide a file system

```sh
sudo mkfs -t ext4 /dev/sdX
```

### 4. Create a mount point
Create a mount point (a directory) to access the formatted volume

```sh
sudo mkdir /mnt/myvolume
```

### 5. Mount the volume
`mount` command to mount the formatted volume to the created mount point

```sh
# /dev/sdX - volume
# /mnt/myvolume - mount point

sudo mount /dev/sdX /mnt/myvolume
```

### 6. Verify the mount
`df` command to verify that the volume is mounted

```sh
df -h
```
