@echo off

setlocal enabledelayedexpansion

set /a n=%1
set /a result=1

for /l %%i in (1,1,%n%) do (
    set /a result=!result! * %%i
)

echo %result%