## Linux Commands

#### 1) `ls` -> list files and directories
```sh
# -a list all files including hidden files 
# -l list files and directories with file permissions and other informations
# -t sort files with time (most recent first)
# -r the reverse the order of listing
# path is optional here

ls -altr <path>
```

#### 2) `cd` -> change directory
```sh
cd <path>
```

#### 3) `pwd` -> display the current working directory's full path
```sh
pwd
```

#### 4) `mkdir` -> make directory
```sh
# -p create parent directory if not found

mkdir -p <parent-directory-name>/<new-directory-name>
mkdir <new-directory-name>
```

#### 5) `rm` -> remove files or directories
```sh
# -r delete files inside directory recursively
# -f force delete without prompt

rm -rf <file/directory>
```

#### 6) `cp` -> copy files or directories
```sh
# -r copy files inside directory recursively

cp -r <file/directory>
```

#### 7) `mv` -> move/rename files or directories
```sh
# move
mv <source> <destination>

# rename
mv <old-name> <new-name>
```

#### 8) `touch` -> create files/change access time or modification time
```sh
# create file
touch <filename>

#change access time
touch -a <filename>

#change modification time
touch -m <filename>
```

#### 9) `cat` -> concatenate files and display the content
```sh
# print file content

cat <filename>
```

#### 10) `nano` -> text file editor
```sh
nano <filename>

# ctrl + x to close
```

#### 11) `grep` -> search for given pattern/text in file
```sh
# -i ignore case

grep -i <pattern> <file>
```

#### 12) `find` -> search for files and directories 
```sh
# -name file/directory to be searched

find <path-to-search> -name <file-name/directory-name>
```

#### 13) `chmod` -> change file permissions
```sh
# <permissions>
# 4 - read, 2 - write, 1 - execute
# example 400 -> read only for owner
# example 777 -> read, write, execute for owner, group, others

# -R change permissions for all files and directories recursively

chmod <permissions> <file-name>
```

#### 14) `chown` -> change file ownership
```sh
# -R change ownership for all files and directories recursively

chown -R <user>:<group> <file-name>
```

#### 15) `ps` -> process status
```sh
# a - all process
# u - show the user name
# x - daemon process
# -e - all process including other users
# -f - full formatted including command line

ps aux
ps -ef
```

#### 16) `top` -> system process in realtime
```sh
# -b batch mode (non-interactive)
# -n no. of iterations 

top -b -n 1
```

#### 17) `kill` -> kill process
Kill by process id
```sh
# signals
# -15 (default) - kill the process gracefully
# -9 - kill the process immediately

kill -9 <process-id>
```

Kill by process name
```sh
# signals
# -15 (default) - kill the process gracefully
# -9 - kill the process immediately

pkill -9 <process-name>
```

Grep process id
```sh
pgrep <process-name>
```

#### 18) `wget` -> download files
```sh
# -O output filename
wget -O <filename> <url>
```

#### 19) `curl` -> transferring data to and from a web server
```sh
# -X http request type
# -H custom header
# -d data
# -o output file

curl -X POST -H "Content-Type: application/json" -d '{"key":"value"}' https://api.example.com/endpoint
```

#### 20) `tar` -> create or extract compressed archive files
```sh
# -c create archive
# -x extract archive
# -v verbose
# -f file
# -t list
# -d delete
# -r append
# -u update

tar -cvf <compressed-file>
tar -xvf <compressed-file>

tar -tvf <compressed-file>

tar -d -f <compressed-file> <file>
tar -u -f <compressed-file> <file>
tar -r -f <compressed-file> <file>
```

#### 21) `ssh` -> secure shell: connect to remote machines
To Connect: 
```sh
# -i identity file (private key)
# -p port (by default - 22)
ssh -i <private-key-file> <username>@<host-address> -p <port>
```

To Generate Key: 
```sh
# -t key type

ssh-keygen -t <key-type>
```

To Copy Public Key: 
```sh
# -i identity file (public key)

ssh-copy-id -i <public-key-file> <username>@<host-address>
```

To add private key to SSH Agent:
```
# -l list private keys
# -d delete private key

ssh-add <key-file>
ssh-add -l
ssh-add -d <file>
```

Config File:
```
Host <name-to-machine>
  HostName <host-address>
  Port <port>
  User <username>
  IdentityFile <path-to-private-key>
```

#### 22) `scp` -> copy files securely
```sh
# -i identity file
# -r copy directory files recursively
scp -i <private-key> <username>@<host-address>:<path-to-store-file>
```

#### 23) `rsync` -> copy and sync files between systems
```sh
# -a archive files
# -z compress files
# -v verbose
rsync -azv <file/directory-to-sync> <username>@<host-address>:<path-to-store-files>
```

#### 24) `df` -> disk free space
```sh
# -h human readable format
# / root disk
df -h
df / -h
```

#### 25) `du` -> disk usage
```sh
# -h human readable format
# -s total size for each argument

du -sh <file/directory>
```

#### 25) `ifconfig` -> displays information about all network interfaces
```sh
# list of all interfaces and their informations
ifconfig -a

# make interfaces up/down
ifconfig <interface-name> up
ifconfig <interface-name> down

# set ip address to interface
ifconfig <interface-name> <ip-address> netmask <subnet>
```

#### 26) `ip` -> displays information about all network interfaces
```sh
# list of all interfaces and their informations
ip addr show

# set ip address to interface
ip addr add 192.168.1.100/24 brd 192.168.1.255 dev eth0

# remove ip address to interface
ip addr del 192.168.1.100/24 dev eth0

# make interfaces up/down
ip link set <interface-name> up
ip link set <interface-name> down

# view route tables
ip route
```

#### 27) `ip` -> displays information about all network interfaces
```sh
# list of all interfaces and their informations
ip addr show

# set ip address to interface
ip addr add 192.168.1.100/24 brd 192.168.1.255 dev eth0

# remove ip address to interface
ip addr del 192.168.1.100/24 dev eth0

# make interfaces up/down
ip link set <interface-name> up
ip link set <interface-name> down

# view route tables
ip route
```

#### 28) `netstat` -> network statistics 
``` sh
# t - tcp connections
# u - udp connections
# l - listening sockets
# p - display pid/process name
# n - display numeric address and port number
# a - all sockets, including listening, established, and closed sockets

sudo netstat -tulpn
```

##### socket statistics `ss` 
more efficient and scalable than `netstat` and is part of `iproute2` package

``` sh
sudo ss -tulpn
```

#### 29) `systemctl` -> manage system services
```sh
# Starts a service
systemctl start <service-name>

# Stops a service
systemctl stop <service-name>

# Restarts a service
systemctl restart <service-name>

# Enables a service to start at boot time
systemctl enable <service-name>

# Disables a service from starting at boot time
systemctl disable <service-name>

# Displays the status of a service
systemctl status <service-name>

# Lists all available services
systemctl list-units
```

#### 30) `journalctl` -> view system service logs using systemd journal
```sh
# -u unit (sshd, apache2, etc., )
# -p priority (warning, error, info)

journalctl -u sshd -p info
```

#### 31) `cron` -> schedule tasks
```sh
# edit crontab
crontab -e

# list crontab
crontab -l

# remove crontab
crontab -r

# cron status
systemctl status crond

# view logs
cat /var/log/syslog
cat /var/log/cron
```

#### 32) `at` -> schedule jobs at specific time
```sh
# create a scheduled job
at <time>

# view the list of scheduled jobs including the job id
atq

# view the contents of specific job
at -c <job-id>

# remove jobs from queue
atrm <job-id>
```

#### 33) `ping` -> check network connectivity
```sh
# -c count of packets to be sent
ping -c <count> <destination-address>
```

#### 34) `traceroute` -> trace route - trace the route packets to reach the destination
```sh
traceroute <destination-address>
```

#### 35) `curl` -> check website connectivity
```sh
# -I to retrieve headers only
# -s silent
# head -n 1 -> first one line only

curl -Is <destination-address> | head -n 1
```

#### 36) `dig` -> get dns information for the domain name
```sh
# dns record types - A, AAAA, CNAME, NS, MX
# ALL - provide all data
# -x     - reverse dns
# +short - short form result

dig <domain-name> <dns-record-type>
```

#### 37) `hostname` -> get/set the hostname - hostname is the name given to the computer
```sh
# get the hostname
hostname

# display the ip address associated with the hostname 
hostname -i

# set the hostname temporarily
sudo hostname <new-hostname>

# set the hostname permanently
sudo hostnamectl set-hostname <new-hostname>
```

#### 38) `who` -> displays information about the users currently logged
```sh
# shows username, terminal, login time
who
```

#### 39) `useradd` -> to create a new user account
```sh
# -m create home directory
# -d specify home directory
# -G add groups
# -s specify shell
# -p set password

useradd -m <username>
```
> To delete user along with thier home directory `userdel -r <username>`


#### 40) `usermod` -> to modify a user account
```sh
# -d modify home directory
# -a append
# -G groups
# -s specify shell
# -l change the login name
# -L lock the user account
# -p set password

usermod -aG <groupname> <username>
```

#### 41) `passwd` -> to set new password for the user
```sh
# -e force to change the password at next login
# -l lock user account
# -u unlock user account
# -d delete password

passwd <username>
```

#### 42) `sudo` -> superuser do - allows users to run commands with root privileges
```sh
# -u to run command as a specific user

sudo -u <username> <command>

# temporarily switch to root user
sudo -i

# run commands with privileges
sudo <command>
```

#### 43) `lsof` -> list open files - information about open files and network connections
```sh
# -i to show only ipv4 and ipv6 connections
lsof -i

# -i4 to show only ipv4 connections
lsof -i4

# -i6 to show only ipv6 connections
lsof -i6

# list of connections using the given port
lsof -i :<port-number>

# list of connections using ip protocol (TCP/UDP) with the given port
lsof -i TCP:<port-number>

# list of connections using ip protocol (TCP/UDP) with the given ip address
lsof -i TCP@<ip-address>

# -u to show files and connections created by user
lsof -u <username>

# -p to show the files and connections with given process id 
lsof -p <process-id>
```

#### 44) `nc` -> netcat - manage networks and monitor the flow
* simple chat
```sh
# -l listen on port
nc -l 3000

# connect to port
nc localhost 3000
```

* web server
```sh
# HTTP/1.1 - HTTP version
# 200 OK   - HTTP status code with message
# \r\n     - separate headers from the response body

while true; do { echo -ne "HTTP/1.1 200 OK\r\nContent-Length: $(wc -c < index.html)\r\nContent-Type: text/html\r\n\r\n"; cat index.html; } | nc -l 8000; done
```

* scan ports
```sh
# -z - scan listening daemons
# -v - verbose

nc -zv <ip-address> <port-range>

nc -zv example.com 80-84 
```

#### 45) `sed` -> stream editor
```sh
# replace a string in place
# s  - substitute
# g  - global
# -i - modify a file in-place (create a backup file with given extension)

sed -i '.bak' 's/old/new/g' file.txt

# delete specific line
# 3 specifies the line number

sed '3d' file.txt

# delete all lines starts with #
sed '/^#/d' file.txt
```

#### 46) `awk` -> text processing
```sh
# -F - field separator
# NR - row number
# NF - no. of fields
# $1 - print the first column

awk -F "," '{ if(NR>1) print $1 }' file.txt

# calculate the sum of a column
# END - executed after all the input lines

awk '{sum+=$1} END {print sum}' file.txt
```

#### 47) `cut` -> extract the specific section of text from file
```sh
# -d delimiter, by default tab space
# -f fields
# -c characters
# -s suppress lines with no delimiter

cut -d "," -f 1 -s file.txt
```

#### 48) `sort` -> sort lines of text
```sh
# -t delimiter, by default white space
# -n numerical sort
# -r reverse sort
# -k sort by specific column

sort -t "," -k 2 file.txt
```

#### 49) `diff` -> compare the contents of two files/directories
```sh
# -y human readable format
# -r compare the contents of two directories

diff -y file1.txt file2.txt
```

#### 50) `xargs` -> build and execute command lines from standard input
```sh
# -I {} replacement string

ls *.txt | xargs -I {} mv {} {}.bak
```
