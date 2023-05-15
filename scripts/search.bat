@echo off
setlocal enabledelayedexpansion
set search=%1

for /r %%i in (*) do (
    set "file=%%~nxi"
    if /i "!file!"=="%search%" echo !file!
)
