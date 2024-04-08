# Hands-on Bash Scripting Tutorial

Learn the basics of Bash scripting through a simple interactive script that prompts for a name and password, showcasing variable assignment, user input, and conditional logic.

## Step 1: Creating the Script

### Open Your Terminal

This is your gateway to running and testing Bash scripts.

### Create a New Bash Script File

Using `nano` or another text editor, create a new file for your script.

```bash
nano myscript.sh
```

### Enter the Script Content

Paste the following script into your editor, which includes comments explaining each command:

```bash
#!/bin/bash
# Specifies the interpreter path; here, it's Bash

read -p "name: " x
# Waits for user input. '-p' displays a prompt. Input is stored in the variable 'x'

echo "hi mr ${x}"
# Prints text, using the value stored in 'x' to greet the user.

read -sp "pass: " password
# Again, waits for input. '-s' makes it silent (for passwords). '-p' is for the prompt. Input is stored in 'password'

echo -e "\nyour password is ${password}"
# Prints the password. '-e' enables backslash escapes. '\n' starts a new line before the message.
```

### Save and Exit

After entering the script, save your changes and exit the editor. In `nano`, this is done by pressing `Ctrl+O` to save, then `Enter`, and `Ctrl+X` to exit.

## Step 2: Making the Script Executable

To run your script, it must be marked as executable:

### Change Directory

Ensure you're in the directory containing `myscript.sh`.

### Make the Script Executable

Execute the following command:

```bash
chmod +x myscript.sh
```

This changes the script's permissions, allowing it to run as a program.

## Step 3: Running the Script and Understanding Its Behavior

1. **Execute the Script:** Start it by typing:

```bash
./myscript.sh
```

2. **Follow the Prompts:** The script first asks for your name. This demonstrates receiving user input and storing it in a variable.

3. **Type Your Password (it won't be visible):** This part shows how to safely read sensitive information without displaying it.

4. **See the Output:** The script then greets you and, less safely, displays the password you entered.

## Important Notes on Security and Scripting Practices

- Echoing back the password serves as a demonstration here, but remember it's not a secure practice in real applications.
- This tutorial introduces basic Bash scripting concepts, including variables, input handling, and output. Explore further to learn about control structures, functions, and more advanced scripting techniques.
