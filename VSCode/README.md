# Visual Studio Code

Author: Mahmoud Okasha

## VSCode

Visual Studio Code (VS Code) is a free and open-source source-code editor developed by Microsoft for Windows, `Linux`, and macOS 12. It includes features such as debugging, syntax highlighting, intelligent code completion, code refactoring, and embedded Git.

## Installing VSCode

you can install Visual Studio Code using Snap. To do so, run the following command in the terminal:

```bash
sudo snap install --classic code
```

Alternatively, To install Visual Studio Code on Ubuntu via command line, you can follow these steps:

1- Download the **.deb** package from the official Visual Studio Code website from this [link](https://go.microsoft.com/fwlink/?LinkID=760868).

2- Open a terminal window and navigate to the directory where the .deb package is located.

```bash
cd Downloads/
```

3- Run the following command to install the package:

> Note: you need to specify the file name which starts with `code_1...`

```bash
sudo apt install ./code_1.85.2-1705561292_amd64.deb
```

## Installing important extensions for Visual Studio Code

- ### Installation Using GUI
    1- Open Visual Studio Code.

    ```bash
    code .
    ```

    2- Click on the Extensions icon on the left-hand side of the window.

    ![Extension icon](images/Screenshot%20from%202024-02-09%2002-20-38.png)

    3- Search for the extension you want like **URDF**, **ROS**, **C++** and **Python** to install in the search bar.

    ![ROS Extension icon](images/Screenshot%20from%202024-02-09%2002-24-18.png)

    4- Click on the Install button next to the extension you want to install.

    ![ROS Extension icon](images/Screenshot%20from%202024-02-09%2002-28-14.png)

    > Note: Repeat the same steps for any extension you want **Python**,**C++** and any extension.

- ### Installation Using bash script

  1. Open a text editor and create a new file. You can name it `install_vscode_extensions.sh`.

  2. Start the script with a shebang line to specify the shell to use:

     ```bash
     #!/bin/bash
     ```

  3. Define variables for the extension names:

     ```bash
     ROS_EXTENSION="ms-iot.vscode-ros"
     URDF_EXTENSION="smilerobotics.urdf"
     CPP_EXTENSION="ms-vscode.cpptools"
     ```

  4. Install each extension using the `code --install-extension` command:

     ```bash
     # Install ROS extension
     code --install-extension $ROS_EXTENSION

     # Install URDF extension
     code --install-extension $URDF_EXTENSION

     # Install C++ extension
     code --install-extension $CPP_EXTENSION
     ```

  5. Make the script executable:

     ```bash
     chmod +x install_vscode_extensions.sh
     ```

  6. Run the script:
     ```bash
     ./install_vscode_extensions.sh
     ```

  This script will install the specified Visual Studio Code extensions for ROS, URDF, and C++ automatically. Make sure you have Visual Studio Code installed and the `code` command available in your system's PATH.

## VSCode Shortcuts

Here’s a concise overview of some Visual Studio Code (VS Code) keyboard shortcuts to boost your productivity:

### Basic Editing:

`Ctrl+S` : Save your changes.

`Ctrl+H` : Find and replace.

`Ctrl+D` : Add selection to next find match.

`Ctrl+L` : Select the current line.

`Ctrl+K S`: Save all open files.

`Ctrl+K Ctrl+W`: Close all open editors.

### File Management:

`Ctrl+O` : Open a file.

`Ctrl+N` : Create a new file.

`Ctrl+Shift+T` : Reopen a closed editor.

In this [link](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-linux.pdf) the VSCode keyboard-shortcuts-linux.pdf

> Remember, mastering these shortcuts can significantly speed up your coding workflow!

## [<-Back to main](../README.md)
