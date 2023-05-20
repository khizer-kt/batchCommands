#include <iostream>
#include <string>
#include <vector>
#include <cstdlib>
#include <cstring>
#include <windows.h>

const std::vector<std::string> commands = {
    "cpumanager.bat",
    "defender.bat",
    "delete.bat",
    "filemanager.bat",
    "filepipe.bat",
    "files.bat",
    "firewall.bat",
    "history.bat",
    "largestfile.bat",
    "mem.bat",
    "multipipe.bat",
    "myCommands.bat",
    "network.bat",
    "process.bat",
    "search.bat",
    "speak.bat",
    "startserver.bat",
    "userAdmin.bat"};

int main()
{
    std::cout << "---MINISHELL---" << std::endl;
    std::cout << "===============" << std::endl;

    while (true)
    {
        std::cout << "Enter a command (or 'exit' to quit): ";
        std::string command;
        std::getline(std::cin, command);

        if (command == "exit" || command == "quit")
            break;
        bool isValidCommand = false;
        for (const std::string &cmd : commands)
        {
            if (command == cmd)
            {
                isValidCommand = true;
                break;
            }
        }

        if (isValidCommand)
        {
            std::string fullCommand = "cmd /c " + command;
            int result = system(fullCommand.c_str());

            if (result == -1 || result == 127)
                std::cerr << "Execution failed" << std::endl;
        }
        else
        {
            std::cout << "Invalid command" << std::endl;
        }
    }
    return 0;
}
