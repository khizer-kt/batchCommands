@echo off
echo.
echo Current process and thread:
echo ==========================
tasklist /FI "IMAGENAME eq cmd.exe"
echo.