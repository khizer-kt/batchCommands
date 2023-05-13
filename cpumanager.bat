@echo off
:menu
cls
echo CPU Usage and Scheduling Monitor
echo ==============================
echo 1. Display current process and thread
echo 2. Display CPU usage
echo 3. Exit

set /p choice=Enter your choice:

if "%choice%"=="1" goto process_thread
if "%choice%"=="2" goto cpu_usage
if "%choice%"=="3" exit

:process_thread
echo.
echo Current process and thread:
echo ==========================
tasklist /FI "IMAGENAME eq cmd.exe"
echo.
pause
goto menu

:cpu_usage
echo.
echo CPU Usage:
echo ===========
typeperf "\Processor(_Total)\% Processor Time"
echo.
pause
goto menu
