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
### ```defender``` Command:
Used for checking status of Windows Defender
### ```delete``` Command:
Check if a file exists and then delete it
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
### ```filepipe``` Command:
An ordinary pipe is implemented that will count the number of files with the specified extension through the command
### ```files``` Command:
List the Files of the current directory
### ```firewall``` Command:
Contains Commands for enabling and disabling windows firewall
### ```history``` Command:
Returns the Commands used in the current instance of the terminal
### ```largestfile``` Command:
Returns the file with the largest size in the current directory
### ```mem``` Command:
Returns the total and available RAM memory
### ```network``` Command:
Displays commands for data usage and packet loss of data by pinging a sample website (default site is google.com)
### ```process``` Command:
Contains 3 Commands for viewing running processes, killing running processes and starting a new process
### ```search``` Command:
Searches for a file in the current directory
### ```speak``` Command:
Replicates the echo command
### ```startserver``` Command:
Starts a Server at the user specified port of the localhost
### ```userAdmin``` Command:
Includes two commands for adding and removing users to the Administration groups and hnadling them Admin privileges.
