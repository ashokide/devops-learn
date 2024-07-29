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

#### Supported Arithmetic Operations

| Operation | Operator |
| ------ | ------ |
| + | Addition |
| - | Subtraction |
| * | Multiplication |
| / | Division |
| % | Modulo |
| ** | Exponentiation |


```sh
# Arithmetic Expansion - Performs the calculations and return
echo $(( (1+2) + (3-1) ))
```

```sh
# Arithmetic Evaluation - Modifies the value in variable
a=1
((a++))
((a+=2))
```

```sh
# Interger Variable
declare -i rollNo=13
echo $b
```

```sh
# Make floating point calculations
echo $(echo "scale=3; 1/3" | bc)
```

```sh
# Generates a random number
echo $RANDOM
```

```sh
# Generates a random number between 1 and 10
echo $(( 1 + RANDOM % 10))
```

#### `[...]` is an alias for test
It is used to test or evaluate expressions

```sh
# To know more about test
help test
```
Test return code
* 0 -> success
* 1 -> failure

To get the last executed command's return code
```sh
echo $?
```

Examples
```sh
# test directory
[ -d /bin/bash ]; echo $?

# test file
[ -e /bin/bash ]; echo $?

# test string
[ "cat" = "dog" ]; echo $?

# test number
[ 4 -lt 5 ]; echo $?

# invert test condition
[ ! 4 -lt 5 ]; echo $?
```

#### `[[...]]` is an alias for extended test
It is used to test or evaluate more than one expression

Examples

```sh
# test for directory and file
[[ -d /bin/ && -e /bin/bash ]];echo $? 

# test with logical operator
[[ -d /bin/ ]] && echo /bin/ is a directory

# test with regex
[[ "/bin" =~ /b.* ]];echo $?
```

#### Formatting and Styling text output
`echo -e .....`

It interprets escaped characters like \n, \t etc.,

```sh
echo -e "this \nis \na \nmulti-line \ntext"
```

#### Styled Text Output

```sh
RED_ON_GREEN='\033[31;42m'
RESET='\033[0m'
echo "${RED_ON_GREEN}Hello world${RESET}"
```
![image](https://github.com/user-attachments/assets/1aa76a37-64f1-4b45-bb79-d1bb71290a60)

#### Formatting output with `printf`
Outputs text using placeholders and formatting
```sh
printf "Kernel : %s \n" $(uname -r)

printf "Sum of 1 + 2 and 3 + 4 is %d and %d \n" $(( 1 + 2 )) $(( 3 + 4))

# right aligned text
printf "%10s : %10s\n" task "shell scripting"

# left aligned text and numbers padded with zero's
printf "%-10s : %05d\n" rollno 13

# get the date time in epoch
echo $(date +%s)

# formatting with date
printf "Date is %(%d-%m-%y)T \n" $(date +%s)
```

#### Indexed Arrays

Store collection of elements

Examples
```sh

# declare arrays
fruits=(apple orange banana grapes jackfruit)
states=("tamil nadu" "andhra pradhesh" "himachal pradhesh")

declare -a fruits=(apple orange banana grapes jackfruit)

# get the value based on index
echo ${fruits[0]}

# get all the values
echo ${fruits[@]}

# get the length of array
echo ${#fruits[@]}

# append the values
fruits+="guava"

# insert value at indexed position
fruits[10]="musk melon"

# loop through all the elements
for i in {0..10}; do printf "index : %d \t value : %10s \n" $i "${fruits[$i]}"; done

```

#### Associative Arrays

Store `Key Value` pairs

Examples
```sh

# declare associative arrays
declare -A employee

# insert values
employee[name]="Ashok Natarajan"
employee["employee id"]=13

echo "${employee[name]} has the employee id ${employee['employee id']}"

```

#### Conditional Statements `if then elif else`

Execute code based on conditions

```sh
a=5
b=10
if [[ $a -gt $b ]]
then
  echo "$a is greater than $b"
elif [[ $a -gt 3 ]]
then
  echo "$a is greater than 3"
else
  echo "$a is less than 3"
fi
```

#### Loops 

##### While Loop

Runs the statement as long as the condition is true

```sh
declare -i n=1
while ((n<=5))
do
    echo "n is $n"
    ((n++))
done
```

##### Until Loop 

Runs the statement as long as the condition is false

```sh
declare -i n=1
while ((n!=6))
do
    echo "n is $n"
    ((n++))
done
```

##### For Loop 

Iterates through the list of items, runs the statement once for each item

```sh
fruits=(apple orange kiwi jackfruit pineapple)
for i in ${fruits[@]}
do
    echo "fruit : $i"
done
```

```sh
fruits=(apple orange kiwi jackfruit pineapple)
for (( i=0; i<5; i++))
do
    echo "fruit : ${fruits[$i]}"
done
```

```sh
declare -A employee

employee["name"]="Ashok Natarajan"
employee["employee id"]=13

for i in "${!employee[@]}"
do
    echo "$i : ${employee[$i]}"
done
```

```sh
# do not preserves space in names of items
for i in $(ls)
do 
    echo "file found : $i"
done

# preserves space in names of items
for i in *
do 
    echo "file found : $i"
done
```

#### Switch Case
Runs code when an input matches a condition

```sh
name=apple

case $name in
    apple) echo "$name is a fruit";;
    tomato|potato) echo "$name is a vegetable";;
    *) echo "$ is unknown";;
esac

```
