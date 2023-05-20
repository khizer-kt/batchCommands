@echo off
setlocal enabledelayedexpansion

if not "%~1"=="" (
    set "output=%~1"
    :loop
    shift
    if not "%~1"=="" (
        set "output=!output! %~1"
        goto loop
    )
    echo %output%
)
