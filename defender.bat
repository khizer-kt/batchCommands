@echo off
sc query windefend | findstr /C:"STATE" | findstr /C:"RUNNING"
if %ERRORLEVEL% EQU 0 (
    echo Windows Defender is running.
) else (
    echo Windows Defender is not running.
)