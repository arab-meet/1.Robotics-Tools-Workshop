#  Shell Scripting

## 1- Why Scripting ?
* ### shells are interactive, which means they accept commands as input from users and execute them. However, sometimes we want to execute a bunch of commands routinely, so we have to type in all commands each time in the terminal


* ### The initial line in a bash file needs to be `#!/bin/bash`.

* ### Save the file with the extension `.sh` using the specified filename format, such as `name_file.sh`

 
## 2- Creating a Script File and Running It

### To achieve this, follow these steps:

- ### Begin by creating a new file named `bash_script.sh` using the following command:

  ```bash
  touch bash_script.sh
  ```
- ### Open the newly created file [bash_script.sh](../source/bash_script.sh) and insert the following content:
  ```bash
  #!/bin/bash
  foo=bar
  echo "$foo"
  echo 'foo'
  ```
- ### Grant execution permissions to the script file:
  ```bash
  chmod +x bash_script.sh
  ```
- ### Save the file and execute the script from the command line:
  ```bash
  ./bash_script.sh

  # The output will resemble the following:
  
    # bar
    # foo
  ```


## 3- Input Handling in Bash Script

### A- Standard Input:
- ### Prompt the user to input their name:
  ```bash
  read name_of_variable
  ```
### B- Hidden Input (e.g., Password):

- ### Allow the user to input sensitive information without displaying it in the terminal:
  ```bash
  read -s name_of_variable 
  ```
### C- Combined Input and Prompt:

- ### Simultaneously print a prompt and read input on the same line:
  ```bash
  read -p "enter your name: "name_of_variable"
  ```
---

# [Hands-On: Bash scripting Read](./Hands-On:Bash-scripting-Read.md)

## 4-  Run a command a bunch of times:

```bash
    robot@robot:$ for i in $(seq 1 5); do echo hello; done
    hello
    hello
    hello
    hello
    hello
```
Example:

[for.sh](https://github.com/arab-meet/1.Robotics_Tools_Workshop/blob/shell/Learn%20Shell%20Tools%20and%20Scripting/for.sh)

- for x in list; do BODY; done
  - `;` terminates a command – equivalent to newline
  - split list, assign each to `x`, and run body
  - splitting is `whitespace splitting`, which we’ll get back to
  - no curly braces in shell, so `do` + `done`

- `$(seq 1 5)`
  - run the program seq with arguments 1 and 5
  - substitute entire `$()` with the output of that program
  - equivalent to

    `for i in 1 2 3 4 5`

---

```bash
robot@robot:$ seq 1 5
1
2
3
4
5
```

```bash
robot@robot:$ for f in $(ls); do echo $f; done
image.py
foo.txt
test.cpp
```
There are a bunch of “special” variables too:

- `$0` - Name of the script.
- `$1` to `$9` - Arguments to the script. `$1` is the first argument and so on.
- `$@` - All the arguments.
- `$#` - Number of arguments.
- `$?` - Return code of the previous command
- `$$` - Process identification number (PID) for the current script.
- `!!` - Entire last command, including arguments. A common pattern is to execute a command only for it to fail due to missing permissions; you can quickly re-execute the command with sudo by doing sudo !!

- `$_` - Last argument from the last command. If you are in an interactive shell, you can also quickly get this value by typing `Esc` followed by . or `Alt+`.

---
Will print each file name in the current directory.

```bash
for f in $(ls); do echo $f; done
```
To only print directories

```bash
for f in $(ls); do if test -d $f; then echo dir $f; fi; done
```

- `if CONDITION; then BODY; fi`
  - `CONDITION` is a command; if it returns with exit status `0` (success), then `BODY` is run.
  - can also hook in an `else` or `elif`.
  - again, no curly braces, so `then` + `fi`.
- `test` is another program that provides various checks and comparisons, and exits with `0` if they’re true (`$?`).

  - `man` COMMAND is your friend: `man test`
  - can also be invoked with `[ + ]`: `[ -d $f ]`
    - take a look at `man test` and which `"["`


```bash
echo $0
echo $1
echo $#
echo $$

mkdir -p "$1"
cd "$1"
```

- ## Finding Files

    The find command lets you efficiently search for files, folders, and character and block devices.
    Below is the basic syntax of the find command:
    ```bash
    find /path/ -type f -name file-to-search
    ```
    Where,

    - `/path` is the path where file is expected to be found. This is the starting point to search files. The path can also be/or . which represent root and current directory, respectively.

    - `-type` represents the file descriptors. They can be any of the below:

        f – Regular file such as text files, images and hidden files.

        d – Directory. These are the folders under consideration.

        l – Symbolic link. Symbolic links point to files and are similar to shortcuts.

        c – Character devices. Files that are used to access character devices are called character device files. Drivers communicate with character devices by sending and receiving single characters (bytes, octets).  Examples include     keyboards, sound cards and mouse.

        b – Block devices. Files that are used to access block devices are called block device files. Drivers communicate with block devices by sending and receiving entire blocks of data. Examples include USB, CD-ROM

    - `-name` is the name of the file type that you want to search.
  ---
    ### Examples of the find command
    - Find all directories named src
      ```bash
      find . -type f -name "src*"
      ```
    - How to search hidden files
        Hidden files are represented by a dot in the beginning of the filename. They are normally hidden, but can be viewed with `ls -a` in the current directory.
        used `find` command as shown below to search for hidden files.
        ```bash
        find . -type f -name ".*"
        ```
    - Find all files modified in the last day.
        ```bash
        find . -mtime -1
        ```
    - Find can also perform actions over files that match your query.

      Delete all files with .tmp extension
      ```bash
      find . -name '*.tmp' -exec rm {} \;
      ```
  
# 7 - Finding code
  Finding files by name is useful, but quite often you want to search based on file content. A common scenario is wanting to search for all files that contain some pattern,along with where in those files said pattern occurs. To achieve this, most UNIX-like systems provide `grep`, a generic tool for matching patterns from the input text.

 To check if `grep` is installed on your system, type:
  ```bash
  rg --version
  ```
  The output will look something like this:
  ```bash
  ripgrep 11.0.2
  -SIMD -AVX (compiled)
  +SIMD +AVX (runtime)
  ```
  If you don’t have `grep` installed on your system, you can install it using your distribution’s package manager.
  ```bash
  sudo apt  install ripgrep
  ```
  ---
  ### Examples of the Finding code
  - Find all python files where I used the ros library
    ```bash
    rg -t py 'import ros'
    ```
  - Find all matches of foo and print the following 5 lines
    ```bash
    rg foo -A 5
    ```

# 8 - Finding shell commands 
So far we have seen how to find files and code, but as you start spending more time in the shell, you may want to find specific commands you typed at some point. The first thing to know is that typing the up arrow will give you back your last command, and if you keep pressing it you will slowly go through your shell history.

The `history` command will let you access your shell history programmatically. It will print your shell history to the standard output. If we want to search there we can pipe that output to grep and search for patterns. 
```bash
history | grep find 
```

will print commands that contain the substring “find”.

In most shells, you can make use of `Ctrl+R` to perform backwards search through your history. After pressing `Ctrl+R`, you can type a substring you want to match for commands in your history. 



## [<-Back to main](../README.md)