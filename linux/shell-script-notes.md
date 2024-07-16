## Shell Scripting

Bash (Bourne Again Shell)

To check the bash version
```
bash --version
```

To check the current shell
```
echo $SHELL
```

### Pipes and Redirection

Pipes

```
cat sample.txt | wc
```

Redirection

| Stream | Name |
| ------ | ------ |
| 0 | stdin |
| 1 | stdout |
| 2 | stderr |

Output Redirection

| Symbol | Function |
| ------ | ------ |
| > | Overwrite |
| >> | Append |
| < | Input Redirection |
| << | Here Document |
```
cat sample.txt 2> error.txt 1> output.txt
```

Overwrite Mode
```
ls > directory.txt
```

Append Mode
```
ls >> directory.txt
```

Input Redirection
```
cat < save.txt
```

Here Document
```
cat << EOF >> save.txt
some
random
multiline
text
```

Interrupt
```
ctrl + c 
```

End Of File
```
ctrl + d
```
