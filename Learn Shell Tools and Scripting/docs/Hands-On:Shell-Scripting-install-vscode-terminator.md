
# Bash Script for Installing VSCode and Terminator

This guide walks you through creating a Bash script to automate the installation of Visual Studio Code (VSCode) and Terminator on Linux (specifically, Debian-based distributions like Ubuntu).

## Step 1: Create the Script File

First, open your terminal and create a new file for your script using a text editor. For example, with `nano`:

```bash
nano install_vscode_terminator.sh
```

## Step 2: Add the Shebang

At the top of the file, add the shebang line to specify that the script should be executed using Bash:

```bash
#!/bin/bash
```

## Step 3: Update Package Lists

It's good practice to update your package lists before installing new software:

```bash
echo "Updating package lists..."
sudo apt-get update
```

## Step 4: Install Terminator

Terminator can usually be installed directly from the default repositories:

```bash
echo "Installing Terminator..."
sudo apt-get install -y terminator
```

## Step 5: Install Visual Studio Code

VSCode is not available in the default repositories, so you'll need to add the Microsoft repository and import their GPG key:

```bash
echo "Installing VSCode..."
sudo snap install -y --classic code
```


## Step 6: Make the Script Executable

After saving your script, you need to make it executable:

```bash
chmod +x install_vscode_terminator.sh
```

## Step 8: Run the Script

Finally, you can run the script:

```bash
./install_vscode_terminator.sh
```

## Complete Script

### Here's the complete script for your reference [install_vscode_terminator.sh](../source/install_vscode_terminator.sh) :

```bash
#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Install Terminator
echo "Installing Terminator..."
sudo apt-get install -y terminator

# Install VSCode
echo "Installing VSCode..."
sudo snap install -y --classic code

sudo apt-get update
sudo apt-get install -y code

echo "Installation completed!"
```

Ensure you run this script with a user that has sudo privileges to install software. This script demonstrates basic principles of Bash scripting for software installation, including updating package lists, installing from the official repositories, adding third-party repositories, and cleaning up temporary files.