# Batch and Bash Scripts For Windows and Linux
## Members: 
- [Khizer Tariq](https://github.com/khizer-kt)
- [Rameen Amir]()
- [Azka Basit](https://github.com/AzkaBasit)
## How to use:
- Clone the repository
- Add the path of the repository to your enviroment variables
- Run a command via PowerShell / Windows Terminal  
- A python CLI MiniShell has been included run ```python shell.py``` or if it is added in the path just ```shell.py``` to access the minishell. 

The Repository currently contains 18 distinct Commands that are performing around 25 different tasks (some commands work as together like a file manager so one command is used to display menu options for multiple commands)  

The Repository now contains Bash Shell Files that have commands for linux based systems as well (tested on Kali), the system services that were used in Batch files and are only Windows specific like windows defender have been excluded.
## Python Dependencies
Following Python Libraries need to be installed for some of the commands:
```
pip install os-sys
```
```
pip install subprocess.run
```
## Batch Commands:
Use the ```myCommands``` command to get the list of all the commands implemented by this repository.
### ```cpumanager``` Command:
Displays the current process and thread information
### ```defender``` Command:
Used for checking status of Windows Defender
### ```delete``` Command:
Check if a file exists and then delete it
### ```filemanager``` Command:
Contains commands for files and directory management  
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
### ```multipipe``` Command:
Uses two pipes to perform a simple file type and sorting function
### ```network``` Command:
Displays commands for data usage and packet loss of data by pinging a sample website (default site is google.com)
### ```process``` Command:
Contains 3 Commands for viewing running processes, killing running processes and starting a new process
### ```scribble``` Command:
Write to a file and if it does not exist create it
### ```search``` Command:
Searches for a file in the current directory
### ```startserver``` Command:
Starts a Server at the user specified port of the localhost
### ```speak``` Command:
Replicates the echo command

### ```touch``` Command:

Creates a new file 
### ```userAdmin``` Command:
Includes two commands for adding and removing users to the Administration groups and handling them Admin privileges.  


---
## Bash Commands:  
Save files with a ```.sh``` extension, 
use ```chmod +x script.sh``` to add executeable permissions to the saved bash file.
Run the file using ```./script.sh``` command.
The ```./myCommands.sh``` will display all the available commands.

----
### Windows Commands:

![ScreenShot](/res/image.png)

### Linux Commands:
![ScreenShot](/res/image2.png)
