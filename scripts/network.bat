@echo off
setlocal
:menu
cls
echo Network Activity Monitor
echo =======================
echo 1. Display current data usage
echo 2. Display packet loss
echo 3. Exit
set /p choice=Enter your choice:
if "%choice%"=="1" (
    netstat -e | findstr "Bytes"
    pause
    goto menu
)
if "%choice%"=="2" (
    ping -n 10 google.com | findstr "Lost"
    pause
    goto menu
)
if "%choice%"=="3" (
    exit
)
echo Invalid choice. Press any key to continue...
goto menu
