@echo off

echo Firewall Management
echo =========================
echo 1. Add a user to the Administrators group
echo 2. Remove a user from the Administrators group
set /p choice=Enter your choice:

if "%choice%"=="1" (
    set /p username=Enter the username to add to Administrators group:
    net localgroup administrators %username% /add
    echo User %username% has been added to Administrators group.
    goto menu
)

if "%choice%"=="2" (
    set /p username=Enter the username to remove from Administrators group:
    net localgroup administrators %username% /delete
    echo User %username% has been removed from Administrators group.
    goto menu
)