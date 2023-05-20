@echo off
set "ext=%~1"
dir /b | find /c "%ext%"