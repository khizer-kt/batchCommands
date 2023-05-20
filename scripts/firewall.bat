@echo off

:menu
cls
echo Firewall Management
echo =========================
echo 1. Enable Windows Firewall
echo 2. Disable Windows Firewall
echo 3. Exit
set /p choice=Enter your choice:

if "%choice%"=="1" (
    netsh advfirewall set allprofiles state on
    echo Windows Firewall has been enabled.
    pause
    goto menu
)

if "%choice%"=="2" (
    netsh advfirewall set allprofiles state off
    echo Windows Firewall has been disabled.
    pause
    goto menu
)

if "%choice%"=="3" (
    exit
)

echo Invalid choice. Press any key to continue...
goto menu
