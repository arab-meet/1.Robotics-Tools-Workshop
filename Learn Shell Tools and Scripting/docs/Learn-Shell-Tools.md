#  Learn Shell Tools 
Author: sherif Fathey

Review: kyrillos Fekry

# 1 - What is the shell?
A `shell` is a program that takes commands from the keyboard and gives them to the operating system to perform.


# 2 - Using the shell
Refers to interacting with a command-line interface on your computer.

* You can launch your terminal using `ctrl`+`alt`+`t`  from keyboard

* When you launch your terminal, you will see a `prompt` that often looks a little like this:

  ```bash
  ubuntu@robot:~$ 
  ```
  This serves as the primary text interface for the shell.

   - `ubuntu` represents the username, indicating your presence on the `robot` machine with the "current working directory" 
   
   - denoted as `~`, a shorthand for "home". 
   
   - The presence of the `$` symbol indicates that you are not operating as the root user.


# 3 - Shell Tools
- ## Commands In Linux Shell

  1. **`cd`**: Change directory. This command is used to change the currentworking directory.

  2. **`ls`**: List directory contents. This command is used to list the files and directories in the current working directory.

  3. **`mkdir`**: Make directory. This command is used to create a new directory.

  4. **`touch`**:create a single file.This command is used to create a new file.

  5. **`rm`**: Remove file or directory. This command is used to delete files or current directories.

  6. **`cp`**: Copy file or directory. This command is used to copy files or current directories.

  7. **`mv`**: Move or rename a file or current directory. This command prompt is used to move files or directories to a new location or rename them.

  8. **`cat`**: Concatenate and display files. This command is used to display the contents of an executable file.

  9. **`grep`**: Search for a pattern in a file extension. This command is used to search for a specific string or pattern in a file type at the current time.

  10. **`pwd`**: Print working directory. This simple command is used to display the current working directory.

  11. **`man`**: Display manual pages. This command is used to display the manual pages for a specific command.



# 4 - Basic Shell Commands and Navigation

## A -Root over operating Systems 

* #### A path on the shell is a delimited list of directories; separated by `/` on Linux and macOS and `\` on Windows. 

* #### On Linux and macOS, the path `/` is the `root` of the file system, under which all directories and files lie, whereas on Windows there is one root for each disk partition (e.g., C:\). 

* #### We will generally assume that you are using a Linux filesystem in this class. 

* #### A path that starts with `/` is called an absolute path. Any other path is a relative path,Relative paths are relative to the current working directory 

## B - Print working Directory `pwd` and cahnge directory `cd` 

* ###  `pwd` command that we  use to Print current  Working Directory. 

  ```bash
  robot:~$ pwd
  /home/robot 
  ```

 * ### To change the Current working Directory you can use `cd` command. 


    ```bash
    robot:~$ cd /home
    robot:/home$ pwd
    /home
    ```
 * ### You can also use `cd ..` command to move backword   
      ```bash
     
      robot:/home$ cd ..  # move from home to the root
      robot:/$ pwd
      /
      ```
---
 
  * ##  Practice example:
  
    ```bash
    robot:~$ cd ../..
    robot:/$ cd ./home
    robot:/home$ pwd
    /home

    robot:/home$ cd robot
    robot:~$ pwd
    /home/robot

    robot:~$ ../../bin/echo hello
    hello
    ```
    - Notice that our shell prompt kept us informed about what our current working directory was. You can configure your prompt to show you all sorts of useful information, which we will cover in a later lecture.
    
    - In general, when we run a program, it will operate in the current directory unless we tell it otherwise. For example, it will usually search for files there, and create new files there if it needs to.

---
## C -  list files and directories `ls` and shell help command `--help` 

 * ###  We use the `ls` command to see what lives in a given directory:

    ```bash
    robot:~$ ls

    # The output should be someting like that:
    #  Downloads   Pictures   Desktop     Documents   get-docker.sh   meetup_ws   Music Public  snap  Templates   Videos
    ```
        
    ```bash
    robot:~$ cd ..
    robot:/home$ ls
    robot
    robot:/home$ cd ..
    robot:/$ ls
    bin
    boot
    dev
    etc
    home
    ...
    ```

  * ### Unless a directory is given as its first argument, `ls` will print the contents of the current directory.

    ```bash
    robot:~$ ls  /home

    # The output should be someting like that:
    # robot
    ```
 
- ### Finding How To Use Commands

  If you ever want more information about a program’s arguments, inputs, outputs, or how it works in general, give the `man` program a try. It takes as an argument the name of a program, and shows you its manual page. Press `q` to exit.

  ```bash
  robot:~$ man ls
  ``` 
  ---

####  Many commands support the`--help` option for a quick overview of command functionalities.

* For example, `ls --help` command typically provides a brief overview of the functionalities and options available for the `ls` command
  ```bash
  ls --help
  ```  


* using `ls` with the `-l`  option to display detailed information about the contents of the /home directory. The -l option stands for **"long listing format"**, which provides detailed information about each file or directory in the specified directory.

    ```bash
    ls -l /home

    # The output should be someting like that:
    # total 12 drwxr-xr-x 54 robot robot 12288 Apr 14 21:50 robot
    ```

##  D - Create Folders and Files

  * ### The `mkdir` command is like a magic wand for creating folders super easily

  * #### Syntax of `mkdir` Command in Linux:
    ####  `mkdir [options...] [directory_name]`
     ```bash
     mkdir my_first_directory
     ```

  * ### `-v`  displays a message for every directory created.

    ```bash 
    mkdir -v [directories]
    ```

  - ### `-p` A flag which enables the command to create parent directories as necessary.

    ```bash 
    mkdir -p [first/second/third]
    ```

  - ### `-m` This option is used to set the file modes, i.e. permissions, etc. for the created directories. The syntax of the mode is the same as the `chmod` command.

    ```bash 
    mkdir -m a=rwx [directories]
    ```
  
## E - Create a single file 
  * ###  at a time using `touch` command.

      ```bash
      touch File_name 
    ```

## F -  Remove file or directory
 * ### use `rm` to remove file or directory
    ```bash
    rm options(s) file_name
    ```
- ### Removing one file at a time
  ```bash
  rm file_name
  ```
- ### Removing more than one file at a time
  ```bash
  rm file1 file2
  ```
- ### delete a directory
  ```bash
  rm -r directory_name
  ```

## G - Copy file or directory
  * ### use `cp` to copy file or directory
      ```bash
      cp source_file destination
      ```
- ### Copying Between Two Files
  ```bash
  cp file1 file2
  ```
- ### Copy files to a Directory
  ```bash
  cp file1 file2 directory_name/
  ```
- ### Copy Directories
  ```
  cp -r Directory_name1 Directory_name2
  ```

## H - Move file or directory
* ### use `mv` to move file or directory
    ``` bash
    mv options(s) source_file_name(s) Destination_file_name
    ```
- ### Rename a file
  ```bash
  mv file1 file2
  ```
- ### Move a File to anther directory
  ``` bash
  mv file_name Destination_path
  ```


---
#  [Hands-On: Basic Shell Commands and Navigation](./Hands-On:Basic-Shell-Commands-and-Navigation.md)

# 5 - Editing files
## A - Nano Text Editor 
* ### **Nano** text editor is pre-installed on macOS and most Linux distros.
  
 * ### To check if `nano` is installed on your system, type:
    ```bash
    nano --version

    # The output will look something like this:

    # GNU nano, version 4.8 
    # (C) 1999-2011, 2013-2020 Free Software Foundation, Inc.
    # (C) 2014-2020 the contributors to nano
    # Email: nano@nano-editor.org	Web: https://nano-editor.org/
    ```

  
  * ### If you don’t have nano installed on your system, you can install it using your distribution’s package manager.
    ```bash
    sudo apt install nano
    ```
  * ### Opening a File from the Command Line  `nano <filename>`:

    ```bash
    nano first_file.txt
    ```
    * #### This opens a new editor window, and you can start editing the file.

    * #### At the bottom of the window, there is a list of the most basic command shortcuts to use with the nano editor.


## B - gedit Text Edit

* ### gedit is a simple and commonly used text editor that comes pre-installed with the GNOME desktop environment. 

* ### It provides a user-friendly interface and is suitable for basic text editing tasks. If you are using a different desktop environment, you might have a different default text editor.

* ###  To check if `gedit` is installed on your system, type:
  ```bash
  gedit --version

  # The output will look something like this:
  
  #gedit - Version 3.36.2
  ```
 

* ###  If you don’t have `gedit` installed on your system, you can install it using your distribution’s package manager.
  ```bash
  sudo apt install gedit
  ```
* ###  Opening a File from the Command Line `gedit <filename>`:

  ```bash
  gedit first_file.txt
  ```

# [Hands-On: Text Editing with Nano and gedit](./Hands-On:Text-Editing-with-Nano-and-gedit.md)

## [Next Topic →](Learn-Scripting.md)

## [←Back to main](../README.md)

  















