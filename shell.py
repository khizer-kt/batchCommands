import os
import subprocess
from scripts.commandList import commands
print("---MINISHELL---")
print("===============")
while True:
    command = input("Enter a command (or 'exit' to quit): ")
    if command == "exit" or command == "quit":
        break
    if command in commands:
        file_or_function = commands[command]
        subprocess.call([file_or_function, command], shell=True)
    else:
        print("Invalid command")
