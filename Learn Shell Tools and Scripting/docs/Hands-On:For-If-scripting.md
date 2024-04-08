
# Bash Scripting Exercise: Finding a Keyword in Text Files

This exercise guides you through the process of writing a bash script that searches for `.txt` files in a specified directory, checks each file for a specific keyword, and prints the names of the files containing the keyword. It's a practical way to learn how to use `for` and `if` statements in bash scripts.

## Objective

- Search for all `.txt` files in a given directory.
- Check if each `.txt` file contains the keyword "example".
- Print the names of the files that contain the keyword.

## Step 1: Setup

Create a directory and some sample `.txt` files:

```bash
mkdir exercise
cd exercise
echo "This is an example text file." > file1.txt
echo "This file does not contain the keyword." > file2.txt
echo "Another example of a text file." > file3.txt
```

## Step 2: Writing the Script

Create a bash script named `find_keyword.sh` with the following content:

```bash
#!/bin/bash

# Directory to search
search_dir=$1

# Keyword to search for
keyword="example"

# Loop through .txt files in the directory
for file in "$search_dir"/*.txt
do
  # Check for the keyword
  if grep -q "$keyword" "$file"; then
    echo "The file '$file' contains the keyword '$keyword'."
  else
    echo "The file '$file' does not contain the keyword '$keyword'."
  fi
done
```

## Step 3: Make the Script Executable

```bash
chmod +x find_keyword.sh
```

## Step 4: Run the Script

Execute the script by providing the directory path as an argument:

```bash
./find_keyword.sh /path/to/exercise
```

## Expected Output

The script will output which files contain the keyword "example":

```
The file '/path/to/exercise/file1.txt' contains the keyword 'example'.
The file '/path/to/exercise/file2.txt' does not contain the keyword 'example'.
The file '/path/to/exercise/file3.txt' contains the keyword 'example'.
```

## Conclusion

You've successfully completed the exercise, learning to use `for` loops, `if` statements, and `grep` in bash scripts to automate file processing tasks.
