@REM The dir /b command lists all files and directories in the current directory in a bare format (without any additional information).
@REM The output of dir /b is then piped (|) to the findstr command, which filters the input and only displays lines that contain the string ".txt". This filters out all non-text files.
@REM The output of findstr is further piped to the sort /R command, which sorts the input in reverse order.
@echo off

rem Perform a task using multiple pipes
dir /b | findstr ".txt" | sort /R
