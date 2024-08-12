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
