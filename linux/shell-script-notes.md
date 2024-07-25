## Shell Scripting

### Bash (Bourne Again Shell)

To check the bash version
```sh
bash --version
```

To check the current shell
```sh
echo $SHELL
```

### Pipes and Redirection

#### Pipes
```sh
cat sample.txt | wc
```

#### Data Streams

| Stream | Name |
| ------ | ------ |
| 0 | stdin |
| 1 | stdout |
| 2 | stderr |

#### Output Redirection

| Symbol | Function |
| ------ | ------ |
| > | Overwrite |
| >> | Append |

#### Input Redirection
| Symbol | Function |
| ------ | ------ |
| < | Input Redirection |
| << | Here Document |

<br>
Example for redirecting output and input

```sh
cat sample.txt 2> error.txt 1> output.txt
```

Output Overwrite Mode
```sh
ls > directory.txt
```

Output Append Mode
```sh
ls >> directory.txt
```

Input Redirection
```sh
cat < save.txt
```

Here Document
```sh
cat << EOF >> save.txt
some
random
multiline
text
EOF
```

Interrupt
```sh
ctrl + c 
```

End Of File
```sh
ctrl + d
```

### Bash builtin and other commands

To run GNU coreutils command
```sh
command echo hai
```

To run shell builtin command
```sh
builtin echo hai
```

To check the type of command
```sh
type echo
```
or 
```sh
type -t echo
```

To check the description of command
```sh
command -V echo
```

To disable the shell builtin command 
```sh
enable -n echo
```
> Note: after disabling, running the command `command echo` will execute it from GNU utils, not from shell builtin

To enable the shell builtin command
```sh
enable echo
```

To check the list of disabled builtin commands
```sh
enable -n
```

List the shell builtin Commands
```sh
builtin
```

### Bash expansions and substitutions

#### Tilde Expansion ~

```sh
# ~ home directory eg. /home/admin
echo ~
```

```sh
# ~- previous working directory
echo ~-
```

#### Brace Expansion {}

Creates a sets or ranges
{a,b,c} or {x..y..i}

```sh
mkdir ~/test_{1,2,3}.txt
```

```sh
# no padding
echo {1..10} # increment
echo {10..1} # decrement
echo {1..30..3} # increment by 3

# padded with zero 
echo {01..100}
```

#### Parameter Expansion ${}
Retrieves and transform stored values

```sh
text="hello there!"

echo $text
echo ${text}
echo ${text:3:4} # from 3 index, 4 characters

echo ${text/there/everybody} # replace there with everybody (first occurrence)
echo ${text//there/everybody} # replace there with everybody (all occurrence)
```

#### Command Substitution $() 
Places the output of one command inside another <br>
> Note : Older Representation ``

```sh
# new representation
echo "the installed python version is $(python3 -V)"
```

```sh
# old representation
echo "the installed python version is `python3 -V`"
```

```sh
# complex code
echo "$(python3 -c 'print("hello from python")' | tr [a-z] [A-Z])"
```

#### Arithmetic Expansion $(())
Does calculations <br>
> Note : Older Representation $[]

```sh
# new representation
echo $((2+3))
echo $((4-3))
echo $((6*2))
echo $((4/5))
```

```sh
# old representation
echo $[2+3]
echo $[4-3]
echo $[6*2]
echo $[4/5]
```

#### Shebang

```sh
#!/usr/bin/env bash
```

#### Make shell script file executable 
```sh
chmod +x file-name.sh
```

#### Run the shell script
```sh
./file-name.sh
```
or

```sh
bash file-name.sh
```

#### echo - Print text to the standard output
```sh
echo hello world

name=someone
echo hello $name

# Double Quotes
echo "the current date time is $(date)"
echo the \(current date time\) is $(date)

# Single Quotes
echo 'the kernal is $(uname -r)'

# prints an empty line
echo;

# no new line at end
echo -n "hello world"
```

#### Variables - stores values

```sh
# no space between equal to sign
string=Hello
string2="Hello World"
```

```sh
# read only variables
declare -r PI=3.14

# lowercase string
declare -l string="Hello World" # Output: hello world

# uppercase string
declare -u string="Hello World" # Output: HELLO WORLD
```

```sh
# To see all the declared variables in the current session
declare -p
```
