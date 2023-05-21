@echo off
setlocal enabledelayedexpansion

set FILE=%1
set INPUT=
set /P "INPUT=Press Ctrl+C to exit. Press Enter to go to the next line. To finish, type 'exit': "

:loop
if /I "%INPUT%"=="exit" (
    echo Exiting Scribble...
    goto :eof
)

echo %INPUT% >> "%FILE%"
set INPUT=
set /P "INPUT="

goto loop
