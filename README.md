# Batch Scripts for Windows
## How to use:
- Clone the repository
- Add the path of the repository to your enviroment variables
- Run a command via PowerShell or Windows Terminal
## Python Dependencies
Following Python Libraries need to be installed for some of the commands:
```
pip install os-sys
```
```
pip install subprocess.run
```
## Commands:
Use the ```myCommands``` command to get the list of all the commands implemented by this repository.
### File Manager Sample Input Usage:  
In the ```filemanager.bat``` call it using filemanager command in the terminal the sample inputs for all the options 1 through 6 are:  
**Option 1: Create a new file**
```
Enter the file name to create: mytextfile.txt
Enter the content of the file (press Ctrl+Z to save):
Hello world!
This is a new text file.
^Z
File created successfully!

``` 
**Option 2: Read a file**
```
Enter the file name to read: mytextfile.txt
Contents of mytextfile.txt:
Hello world!
This is a new text file.
```
**Option 3: Append to a file**
```
Enter the file name to append to: mytextfile.txt
Enter the text to append (press Ctrl+Z to save):
Here's some more text to add to the file.
^Z
Text appended successfully!
```
**Option 4: Rename a file**
```
Enter the file name to rename: mytextfile.txt
Enter the new file name: newtextfile.txt
File renamed successfully!
```
**Option 5: Delete a file**
```
Enter the file name to delete: newtextfile.txt
File deleted successfully!
```
**Option 6: Create a new directory**
```
Enter the directory name to create: mynewdirectory
Directory created successfully!
```
