import os
import subprocess

commands = {
    "cpumanager": "cpumanager.bat",
    "defender": "defender.bat",
    "delete": "delete.bat",
    "filemanager": "filemanager.bat",
    "filepipe": "filepipe.bat",
    "files": "files.bat",
    "firewall": "firewall.bat",
    "history": "history.bat",
    "largestfile": "largestfile.bat",
    "mem": "mem.bat",
    "multipipe": "multipipe.bat",
    "network": "network.bat",
    "process": "process.bat",
    "search": "search.bat",
    "speak": "speak.bat",
    "startserver": "startserver.bat",
    "userAdmin": "userAdmin.bat"
}

while True:
    command = input("Enter a command (or 'exit' to quit): ")
    if command == "exit":
        break
    if command in commands:
        file_or_function = commands[command]
        subprocess.call(file_or_function, shell=True)
    else:
        print("Invalid command")
