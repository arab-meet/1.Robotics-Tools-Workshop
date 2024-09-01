# Hands-On Exercise: Basic Shell Commands and Navigation

## Objective:
To practice using basic shell commands (`cd`, `ls`, `mkdir`, `touch`, `rm`, `cp`, `mv`, `cat`, `grep`, `pwd`, and `man`) and navigating through directories.

## Instructions:
Follow the steps below to complete the exercise:

1. **Open Your Terminal:**
   - Launch your terminal application. You can use the shortcut `Ctrl`+`Alt`+`T` to open a new terminal window.

2. **Navigate to Your Home Directory:**
   - Use the `cd` command to navigate to your home directory:
     ```bash
     cd ~
     ```

3. **Create a New Directory:**
   - Use the `mkdir` command to create a new directory named `shell_practice`:
     ```bash
     mkdir shell_practice
     ```

4. **Navigate to the New Directory:**
   - Use the `cd` command to navigate into the `shell_practice` directory:
     ```bash
     cd shell_practice
     ```

5. **Create New Files:**
   - Use the `touch` command to create three new files named `file1.txt`, `file2.txt`, and `file3.txt`:
     ```bash
     touch file1.txt file2.txt file3.txt
     ```

6. **List Contents of the Directory:**
   - Use the `ls` command to list the contents of the current directory:
     ```bash
     ls
     ```

7. **Display File Contents:**
   - Use the `cat` command to display the contents of `file1.txt`:
     ```bash
     cat file1.txt
     ```

8. **Move Files:**
   - Use the `mv` command to move `file2.txt` to a new directory named `backup` (create the `backup` directory if it doesn't exist):
     ```bash
     mkdir backup
     mv file2.txt backup/
     ```

9. **Copy Files:**
   - Use the `cp` command to copy `file3.txt` to the `backup` directory:
     ```bash
     cp file3.txt backup/
     ```

10. **List Contents of the `backup` Directory:**
    - Use the `ls` command to list the contents of the `backup` directory:
      ```bash
      ls backup
      ```

11. **Remove Files:**
    - Use the `rm` command to remove `file1.txt` from the current directory:
      ```bash
      rm file1.txt
      ```

12. **Search for a Pattern:**
    - Create a new file named `sample.txt` with some text content.
    - Use the `grep` command to search for a specific word or pattern within `sample.txt`:
      ```bash
      echo "This is a sample text file." > sample.txt
      grep "sample" sample.txt
      ```

13. **Print Working Directory:**
    - Use the `pwd` command to print the current working directory:
      ```bash
      pwd
      ```

14. **Access Command Help:**
    - Use the `man` command to access the manual page for the `ls` command:
      ```bash
      man ls
      ```
    - Press `q` to exit the manual page.

15. **Additional Practice (Optional):**
    - Experiment with other commands and options.
    - Navigate through different directories.
    - Create, edit, and delete files.

## Conclusion:
Congratulations! You've successfully completed the hands-on exercise for practicing basic shell commands and navigation. Keep exploring and experimenting with different commands to enhance your proficiency in using the shell.

## [↩ Back to main](./Learn-Shell-Tools.md)