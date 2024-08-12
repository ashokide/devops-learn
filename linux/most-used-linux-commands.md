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

#### 13) `chown` -> change file ownership
```sh
# -R change ownership for all files and directories recursively

chown -R <user>:<group> <file-name>
```

#### 14) `ps` -> process status
```sh
# a - all process
# u - show the user name
# x - daemon process
# -e - all process including other users
# -f - full formatted including command line

ps aux
ps -ef
```

#### 15) `top` -> system process in realtime
```sh
# -b batch mode (non-interactive)
# -n no. of iterations 

top -b -n 1
```
