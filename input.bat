@echo off
if "%~1" == "" (
    echo No file specified.
    exit /b 1
)
set /p content=Type content here: 
echo %content% >> %1
type %1
