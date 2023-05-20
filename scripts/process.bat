@echo off
echo "Welcome to the Process and Thread Manager!"
:menu
echo "Please select an option:"
echo "1. View running processes"
echo "2. Kill a process"
echo "3. Start a new process"
echo "4. Exit"
set /p OPTION="Enter your choice: "
if "%OPTION%"=="1" (
    tasklist
)
if "%OPTION%"=="2" (
    set /p PID="Enter the process ID to kill: "
    taskkill /f /pid %PID%
)
if "%OPTION%"=="3" (
    set /p CMD="Enter the command to start a new process: "
    start %CMD%
)
if "%OPTION%"=="4" (
    echo "Exiting Process and Thread Manager..."
    exit
)
goto menu
