@echo off
set file=%1

if exist "%file%" (
    del "%file%"
    echo File "%file%" deleted.
) else  (
    echo File "%file%" not found.
)
