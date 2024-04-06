# Hands-on Exercise: Text Editing with Nano and gedit

## Objective:
The objective of this exercise is to become familiar with basic text editing using Nano and gedit text editors.

## Requirements:
- Access to a Linux or macOS system.
- Basic knowledge of the command line interface.

## Instructions:

1. **Check Editor Installation:**
   - Open a terminal window.
   - Run the following commands to check if Nano and gedit are installed:
     ```bash
     nano --version
     gedit --version
     ```
   - If Nano and gedit are installed, you should see their version information. If not, follow the installation instructions provided in the previous section.

2. **Create a New Text File with Nano:**
   - Use Nano to create a new text file named `nano_example.txt`. Type the following command and press Enter:
     ```bash
     nano nano_example.txt
     ```
   - In the Nano editor, type some sample text. For example:
     ```
     This is a sample text file created using Nano.
     It's easy to edit text with Nano.
     ```
   - Save and exit Nano by pressing `Ctrl + O`, Enter to confirm the filename, and `Ctrl + X`.

3. **Edit the Text File with gedit:**
   - Use gedit to open the text file `nano_example.txt`. Type the following command and press Enter:
     ```bash
     gedit nano_example.txt
     ```
   - In the gedit window, modify the text as desired. For example, add a new line:
     ```
     This is a modified version of the sample text file.
     ```
   - Save and close the file using the "Save" option in the menu or `Ctrl + S`, then close the gedit window.

4. **Write Text Inside the File and Save with Nano:**
   - Use Nano to open the text file `nano_example.txt` again. Type the following command and press Enter:
     ```bash
     nano nano_example.txt
     ```
   - Write additional text inside the file. For example, add a new line at the end:
     ```
     This is additional text written using Nano.
     ```
   - Save and exit Nano by pressing `Ctrl + O`, Enter to confirm, and `Ctrl + X`.

5. **View Changes:**
   - Use Nano to view the contents of the modified text file. Type the following command and press Enter:
     ```bash
     nano nano_example.txt
     ```
   - Verify that the changes made with gedit and Nano are reflected in the file.

6. **Conclusion:**
   Congratulations! You have successfully completed the hands-on exercise on text editing with Nano and gedit.

## Additional Challenges (Optional):
- Experiment with different editing features of Nano and gedit, such as copy-pasting, search and replace, and syntax highlighting.
- Create additional text files using both editors and perform various editing operations on them.

## [<-Back to main](./Learn-Shell-Tools.md)
