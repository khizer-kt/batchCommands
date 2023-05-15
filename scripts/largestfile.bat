@echo off

setlocal enabledelayedexpansion

set largestfile=""
set largestsize=0

for %%f in (*) do (
    set size=%%~zf
    if !size! gtr !largestsize! (
        set largestsize=!size!
        set largestfile=%%f
    )
)

echo %largestfile%
