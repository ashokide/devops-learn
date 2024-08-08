## Linux Commands

### `ls` -> list files and directories
```sh
# -a list all files including hidden files 
# -l list files and directories with file permissions and other informations
# -t sort files with time (most recent first)
# -r the reverse the order of listing
# path is optional here

ls -altr <path>
```

### `cd` -> change directory
```sh
cd <path>
```

### `pwd` -> display the current working directory's full path
```sh
pwd
```

### `mkdir` -> make directory
```sh
# -p create parent directory if not found

mkdir -p <parent-directory-name>/<new-directory-name>
mkdir <new-directory-name>
```

### `rm` -> remove files or directories
```sh
# -r delete files inside directory recursively
# -f force delete without prompt

rm -rf <file/directory>
```

### `cp` -> copy files or directories
```sh
# -r copy files inside directory recursively

cp -r <file/directory>
```

### `mv` -> move/rename files or directories
```sh
# move
mv <source> <destination>

# rename
mv <old-name> <new-name>
```

### `touch` -> create files/change access time or modification time
```sh
# create file
touch <filename>

#change access time
touch -a <filename>

#change modification time
touch -m <filename>
```

### `cat` -> concatenate files and display the content
```sh
# print file content

cat <filename>
```

### `nano` -> text file editor
```sh
nano <filename>

# ctrl + x to close
```

### `grep` -> search for given pattern/text in file
```sh
# -i ignore case

grep -i <pattern> <file>
```

### `find` -> search for files and directories 
```sh
# -name file/directory to be searched

find <path-to-search> -name <file-name/directory-name>
```
